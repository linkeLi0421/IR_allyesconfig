; ModuleID = '/llk/IR_all_yes/drivers/mfd/twl4030-irq.c_pt.bc'
source_filename = "../drivers/mfd/twl4030-irq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sih = type { [8 x i8], i8, i8, i8, i8, i8, i8, i8, i8, [2 x %struct.sih_irq_data] }
%struct.sih_irq_data = type { i8, i8 }
%struct.sih_agent = type { i32, ptr, i32, i8, i32, %struct.mutex, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.anon.69 = type { i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%union.anon.68 = type { i32 }

@sih_modules = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@nr_sih_modules = internal global { i32, [28 x i8] } zeroinitializer, align 32
@twl4030_sih_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 629, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"module to setup SIH for not found\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"twl4030_sih_setup\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/mfd/twl4030-irq.c\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@twl4030_sih_setup._entry_ptr = internal global ptr @twl4030_sih_setup._entry, section ".printk_index", align 4
@twl4030_sih_setup.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&agent->irq_lock\00", [47 x i8] zeroinitializer }, align 32
@twl4030_sih_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.13, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @twl4030_sih_mask, ptr null, ptr @twl4030_sih_unmask, ptr null, ptr null, ptr null, ptr @twl4030_sih_set_type, ptr null, ptr @twl4030_sih_bus_lock, ptr @twl4030_sih_bus_sync_unlock, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 16 }, [56 x i8] zeroinitializer }, align 32
@twl4030_irq_base = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"twl4030_%s\00", [21 x i8] zeroinitializer }, align 32
@twl4030_sih_setup._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 661, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s (irq %d) chaining IRQs %d..%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@twl4030_sih_setup._entry_ptr.10 = internal global ptr @twl4030_sih_setup._entry.7, section ".printk_index", align 4
@twl4030_init_irq.twl4030_irq_chip = internal global { %struct.irq_chip, [56 x i8] } zeroinitializer, align 32
@twl4030_init_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 689, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Fail to allocate IRQ descs\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"twl4030_init_irq\00", [47 x i8] zeroinitializer }, align 32
@twl4030_init_irq._entry_ptr = internal global ptr @twl4030_init_irq._entry, section ".printk_index", align 4
@irq_domain_simple_ops = external dso_local constant %struct.irq_domain_ops, align 4
@dummy_irq_chip = external dso_local local_unnamed_addr global %struct.irq_chip, align 4
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"twl4030\00", [24 x i8] zeroinitializer }, align 32
@twl4030_init_irq._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.12, ptr @.str.2, i32 725, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@twl4030_init_irq._entry_ptr.15 = internal global ptr @twl4030_init_irq._entry.14, section ".printk_index", align 4
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PIH\00", [28 x i8] zeroinitializer }, align 32
@twl4030_init_irq._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.12, ptr @.str.2, i32 730, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sih_setup PWR INT --> %d\0A\00", [38 x i8] zeroinitializer }, align 32
@twl4030_init_irq._entry_ptr.19 = internal global ptr @twl4030_init_irq._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TWL4030-PIH\00", [20 x i8] zeroinitializer }, align 32
@twl4030_init_irq._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.12, ptr @.str.2, i32 739, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"could not claim irq%d: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@twl4030_init_irq._entry_ptr.23 = internal global ptr @twl4030_init_irq._entry.21, section ".printk_index", align 4
@twl4030_exit_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 760, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013twl4030: can't yet clean up IRQs?\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"twl4030_exit_irq\00", [47 x i8] zeroinitializer }, align 32
@twl4030_exit_irq._entry_ptr = internal global ptr @twl4030_exit_irq._entry, section ".printk_index", align 4
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"twl5031\00", [24 x i8] zeroinitializer }, align 32
@sih_modules_twl5031 = internal constant { [8 x %struct.sih], [32 x i8] } { [8 x %struct.sih] [%struct.sih { [8 x i8] c"gpio\00\00\00\00", i8 10, i8 45, i8 1, i8 18, i8 3, i8 40, i8 5, i8 2, [2 x %struct.sih_irq_data] [%struct.sih_irq_data { i8 25, i8 28 }, %struct.sih_irq_data { i8 31, i8 34 }] }, %struct.sih { [8 x i8] c"keypad\00\00", i8 13, i8 23, i8 1, i8 4, i8 1, i8 22, i8 1, i8 2, [2 x %struct.sih_irq_data] [%struct.sih_irq_data { i8 17, i8 18 }, %struct.sih_irq_data { i8 19, i8 20 }] }, %struct.sih { [8 x i8] c"bci\00\00\00\00\00", i8 20, i8 7, i8 0, i8 7, i8 1, i8 5, i8 2, i8 2, [2 x %struct.sih_irq_data] [%struct.sih_irq_data { i8 0, i8 1 }, %struct.sih_irq_data { i8 2, i8 3 }] }, %struct.sih { [8 x i8] c"madc\00\00\00\00", i8 14, i8 103, i8 0, i8 4, i8 1, i8 102, i8 1, i8 2, [2 x %struct.sih_irq_data] [%struct.sih_irq_data { i8 97, i8 98 }, %struct.sih_irq_data { i8 99, i8 100 }] }, %struct.sih { [8 x i8] c"usb\00\00\00\00\00", i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, [2 x %struct.sih_irq_data] zeroinitializer }, %struct.sih { [8 x i8] c"power\00\00\00", i8 18, i8 7, i8 1, i8 8, i8 1, i8 5, i8 2, i8 2, [2 x %struct.sih_irq_data] [%struct.sih_irq_data { i8 0, i8 1 }, %struct.sih_irq_data { i8 2, i8 3 }] }, %struct.sih { [8 x i8] c"eci_dbi\00", i8 19, i8 0, i8 0, i8 9, i8 2, i8 0, i8 0, i8 1, [2 x %struct.sih_irq_data] [%struct.sih_irq_data { i8 7, i8 5 }, %struct.sih_irq_data zeroinitializer] }, %struct.sih { [8 x i8] c"audio\00\00\00", i8 19, i8 21, i8 0, i8 2, i8 1, i8 20, i8 1, i8 2, [2 x %struct.sih_irq_data] [%struct.sih_irq_data { i8 15, i8 16 }, %struct.sih_irq_data { i8 17, i8 18 }] }], [32 x i8] zeroinitializer }, align 32
@sih_modules_twl4030 = internal constant { [6 x %struct.sih], [40 x i8] } { [6 x %struct.sih] [%struct.sih { [8 x i8] c"gpio\00\00\00\00", i8 10, i8 45, i8 1, i8 18, i8 3, i8 40, i8 5, i8 2, [2 x %struct.sih_irq_data] [%struct.sih_irq_data { i8 25, i8 28 }, %struct.sih_irq_data { i8 31, i8 34 }] }, %struct.sih { [8 x i8] c"keypad\00\00", i8 13, i8 23, i8 1, i8 4, i8 1, i8 22, i8 1, i8 2, [2 x %struct.sih_irq_data] [%struct.sih_irq_data { i8 17, i8 18 }, %struct.sih_irq_data { i8 19, i8 20 }] }, %struct.sih { [8 x i8] c"bci\00\00\00\00\00", i8 15, i8 13, i8 1, i8 12, i8 2, i8 10, i8 3, i8 2, [2 x %struct.sih_irq_data] [%struct.sih_irq_data { i8 0, i8 2 }, %struct.sih_irq_data { i8 4, i8 6 }] }, %struct.sih { [8 x i8] c"madc\00\00\00\00", i8 14, i8 103, i8 0, i8 4, i8 1, i8 102, i8 1, i8 2, [2 x %struct.sih_irq_data] [%struct.sih_irq_data { i8 97, i8 98 }, %struct.sih_irq_data { i8 99, i8 100 }] }, %struct.sih { [8 x i8] c"usb\00\00\00\00\00", i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, [2 x %struct.sih_irq_data] zeroinitializer }, %struct.sih { [8 x i8] c"power\00\00\00", i8 18, i8 7, i8 1, i8 8, i8 1, i8 5, i8 2, i8 2, [2 x %struct.sih_irq_data] [%struct.sih_irq_data { i8 0, i8 1 }, %struct.sih_irq_data { i8 2, i8 3 }] }], [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@twl4030_sih_bus_sync_unlock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 494, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013twl4030: %s, %s --> %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"twl4030_sih_bus_sync_unlock\00", [36 x i8] zeroinitializer }, align 32
@twl4030_sih_bus_sync_unlock._entry_ptr = internal global ptr @twl4030_sih_bus_sync_unlock._entry, section ".printk_index", align 4
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@twl4030_sih_bus_sync_unlock._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 514, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twl4030_sih_bus_sync_unlock._entry_ptr.31 = internal global ptr @twl4030_sih_bus_sync_unlock._entry.30, section ".printk_index", align 4
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@twl4030_sih_bus_sync_unlock._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 541, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twl4030_sih_bus_sync_unlock._entry_ptr.34 = internal global ptr @twl4030_sih_bus_sync_unlock._entry.33, section ".printk_index", align 4
@handle_twl4030_sih._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 591, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013twl4030: %s SIH, read ISR error %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"handle_twl4030_sih\00", [45 x i8] zeroinitializer }, align 32
@handle_twl4030_sih._entry_ptr = internal global ptr @handle_twl4030_sih._entry, section ".printk_index", align 4
@handle_twl4030_sih._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.2, i32 605, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013twl4030: %s SIH, invalid ISR bit %d\0A\00", [57 x i8] zeroinitializer }, align 32
@handle_twl4030_sih._entry_ptr.39 = internal global ptr @handle_twl4030_sih._entry.37, section ".printk_index", align 4
@twl4030_init_sih_modules._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 343, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013twl4030: err %d initializing %s %s\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"twl4030_init_sih_modules\00", [39 x i8] zeroinitializer }, align 32
@twl4030_init_sih_modules._entry_ptr = internal global ptr @twl4030_init_sih_modules._entry, section ".printk_index", align 4
@.str.42 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"IMR\00", [28 x i8] zeroinitializer }, align 32
@twl4030_init_sih_modules._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 359, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twl4030_init_sih_modules._entry_ptr.44 = internal global ptr @twl4030_init_sih_modules._entry.43, section ".printk_index", align 4
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SIH_CTRL\00", [23 x i8] zeroinitializer }, align 32
@twl4030_init_sih_modules._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.41, ptr @.str.2, i32 387, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014twl4030: err %d initializing %s %s\0A\00", [58 x i8] zeroinitializer }, align 32
@twl4030_init_sih_modules._entry_ptr.48 = internal global ptr @twl4030_init_sih_modules._entry.46, section ".printk_index", align 4
@.str.49 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ISR\00", [28 x i8] zeroinitializer }, align 32
@twl4030_init_sih_modules._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.41, ptr @.str.2, i32 395, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\014twl4030: write failed: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@twl4030_init_sih_modules._entry_ptr.52 = internal global ptr @twl4030_init_sih_modules._entry.50, section ".printk_index", align 4
@handle_twl4030_pih._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.2, i32 287, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014twl4030: I2C error %d reading PIH ISR\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"handle_twl4030_pih\00", [45 x i8] zeroinitializer }, align 32
@handle_twl4030_pih._entry_ptr = internal global ptr @handle_twl4030_pih._entry, section ".printk_index", align 4
@___asan_gen_.55 = private unnamed_addr constant [12 x i8] c"sih_modules\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 77, i32 26 }
@___asan_gen_.58 = private unnamed_addr constant [15 x i8] c"nr_sih_modules\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 78, i32 12 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 629, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 640, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant [21 x i8] c"twl4030_sih_irq_chip\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 547, i32 24 }
@___asan_gen_.88 = private unnamed_addr constant [17 x i8] c"twl4030_irq_base\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 268, i32 17 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 655, i32 42 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 660, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant [17 x i8] c"twl4030_irq_chip\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 675, i32 25 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 689, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 713, i32 26 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 724, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 730, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 737, i32 11 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 739, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 760, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 768, i32 20 }
@___asan_gen_.151 = private unnamed_addr constant [20 x i8] c"sih_modules_twl5031\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 168, i32 25 }
@___asan_gen_.154 = private unnamed_addr constant [20 x i8] c"sih_modules_twl4030\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 108, i32 25 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 493, i32 4 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 513, i32 4 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 540, i32 4 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 590, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 604, i32 4 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 342, i32 4 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 358, i32 5 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 386, i32 5 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 394, i32 6 }
@___asan_gen_.226 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.232 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.233 = private constant [29 x i8] c"../drivers/mfd/twl4030-irq.c\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 287, i32 3 }
@llvm.compiler.used = appending global [77 x ptr] [ptr @handle_twl4030_pih._entry, ptr @handle_twl4030_pih._entry_ptr, ptr @handle_twl4030_sih._entry, ptr @handle_twl4030_sih._entry.37, ptr @handle_twl4030_sih._entry_ptr, ptr @handle_twl4030_sih._entry_ptr.39, ptr @twl4030_exit_irq._entry, ptr @twl4030_exit_irq._entry_ptr, ptr @twl4030_init_irq._entry, ptr @twl4030_init_irq._entry.14, ptr @twl4030_init_irq._entry.17, ptr @twl4030_init_irq._entry.21, ptr @twl4030_init_irq._entry_ptr, ptr @twl4030_init_irq._entry_ptr.15, ptr @twl4030_init_irq._entry_ptr.19, ptr @twl4030_init_irq._entry_ptr.23, ptr @twl4030_init_sih_modules._entry, ptr @twl4030_init_sih_modules._entry.43, ptr @twl4030_init_sih_modules._entry.46, ptr @twl4030_init_sih_modules._entry.50, ptr @twl4030_init_sih_modules._entry_ptr, ptr @twl4030_init_sih_modules._entry_ptr.44, ptr @twl4030_init_sih_modules._entry_ptr.48, ptr @twl4030_init_sih_modules._entry_ptr.52, ptr @twl4030_sih_bus_sync_unlock._entry, ptr @twl4030_sih_bus_sync_unlock._entry.30, ptr @twl4030_sih_bus_sync_unlock._entry.33, ptr @twl4030_sih_bus_sync_unlock._entry_ptr, ptr @twl4030_sih_bus_sync_unlock._entry_ptr.31, ptr @twl4030_sih_bus_sync_unlock._entry_ptr.34, ptr @twl4030_sih_setup._entry, ptr @twl4030_sih_setup._entry.7, ptr @twl4030_sih_setup._entry_ptr, ptr @twl4030_sih_setup._entry_ptr.10, ptr @sih_modules, ptr @nr_sih_modules, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @twl4030_sih_setup.__key, ptr @.str.5, ptr @twl4030_sih_irq_chip, ptr @twl4030_irq_base, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @twl4030_init_irq.twl4030_irq_chip, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @sih_modules_twl5031, ptr @sih_modules_twl4030, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @.str.54], section "llvm.metadata"
@0 = internal global [60 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sih_modules to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nr_sih_modules to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_sih_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_sih_setup.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_sih_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_irq_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_sih_setup._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_init_irq.twl4030_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_init_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_init_irq._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_init_irq._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_init_irq._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_exit_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sih_modules_twl5031 to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sih_modules_twl4030 to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_sih_bus_sync_unlock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_sih_bus_sync_unlock._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_sih_bus_sync_unlock._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_twl4030_sih._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_twl4030_sih._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_init_sih_modules._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_init_sih_modules._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_init_sih_modules._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_init_sih_modules._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_twl4030_pih._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @twl4030_sih_setup(ptr noundef %dev, i32 noundef %module, i32 noundef %irq_base) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @nr_sih_modules, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp88 = icmp sgt i32 %0, 0
  br i1 %cmp88, label %for.body.preheader, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.body.preheader:                               ; preds = %entry
  %1 = load ptr, ptr @sih_modules, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %sih.091 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %1, %for.body.preheader ]
  %sih_mod.089 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %module1 = getelementptr inbounds %struct.sih, ptr %sih.091, i32 0, i32 1
  %2 = ptrtoint ptr %module1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %module1, align 1
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %module)
  %cmp2 = icmp eq i32 %conv, %module
  br i1 %cmp2, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %set_cor = getelementptr inbounds %struct.sih, ptr %sih.091, i32 0, i32 3
  %4 = ptrtoint ptr %set_cor to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %set_cor, align 1, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %land.lhs.true.for.inc_crit_edge, label %if.end8

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %sih_mod.089, 1
  %incdec.ptr = getelementptr %struct.sih, ptr %sih.091, i32 1
  %exitcond.not = icmp eq i32 %inc, %0
  br i1 %exitcond.not, label %for.inc.do.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %for.inc.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str) #12
  br label %cleanup

if.end8:                                          ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 116) #13
  %tobool9.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool9.not, label %if.end8.cleanup_crit_edge, label %if.end11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %irq_base, ptr %call7.i.i, align 8
  %sih13 = getelementptr inbounds %struct.sih_agent, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %sih13 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %sih.091, ptr %sih13, align 4
  %imr = getelementptr inbounds %struct.sih_agent, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %imr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %imr, align 8
  %irq_lock = getelementptr inbounds %struct.sih_agent, ptr %call7.i.i, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %irq_lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @twl4030_sih_setup.__key) #9
  %bits = getelementptr inbounds %struct.sih, ptr %sih.091, i32 0, i32 4
  %10 = ptrtoint ptr %bits to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bits, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp1994.not = icmp eq i8 %11, 0
  br i1 %cmp1994.not, label %if.end11.for.end25_crit_edge, label %if.end11.for.body21_crit_edge

if.end11.for.body21_crit_edge:                    ; preds = %if.end11
  br label %for.body21

if.end11.for.end25_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end25

for.body21:                                       ; preds = %for.body21.for.body21_crit_edge, %if.end11.for.body21_crit_edge
  %i.095 = phi i32 [ %inc24, %for.body21.for.body21_crit_edge ], [ 0, %if.end11.for.body21_crit_edge ]
  %add = add i32 %i.095, %irq_base
  %call22 = tail call i32 @irq_set_chip_data(i32 noundef %add, ptr noundef nonnull %call7.i.i) #9
  tail call void @irq_set_chip_and_handler_name(i32 noundef %add, ptr noundef nonnull @twl4030_sih_irq_chip, ptr noundef nonnull @handle_edge_irq, ptr noundef null) #9
  tail call void @irq_modify_status(i32 noundef %add, i32 noundef 0, i32 noundef 32768) #9
  tail call void @irq_modify_status(i32 noundef %add, i32 noundef 3072, i32 noundef 0) #9
  %inc24 = add nuw nsw i32 %i.095, 1
  %12 = ptrtoint ptr %bits to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bits, align 1
  %conv18 = zext i8 %13 to i32
  %cmp19 = icmp ult i32 %inc24, %conv18
  br i1 %cmp19, label %for.body21.for.body21_crit_edge, label %for.body21.for.end25_crit_edge

for.body21.for.end25_crit_edge:                   ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end25

for.body21.for.body21_crit_edge:                  ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body21

for.end25:                                        ; preds = %for.body21.for.end25_crit_edge, %if.end11.for.end25_crit_edge
  %i.0.lcssa = phi i32 [ 0, %if.end11.for.end25_crit_edge ], [ %inc24, %for.body21.for.end25_crit_edge ]
  %14 = load i32, ptr @twl4030_irq_base, align 4
  %add26 = add i32 %14, %sih_mod.089
  %call27 = tail call i32 @irq_set_handler_data(i32 noundef %add26, ptr noundef nonnull %call7.i.i) #9
  %call28 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.6, ptr noundef %sih.091) #9
  %irq_name = getelementptr inbounds %struct.sih_agent, ptr %call7.i.i, i32 0, i32 6
  %15 = ptrtoint ptr %irq_name to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call28, ptr %irq_name, align 8
  %tobool30.not = icmp eq ptr %call28, null
  %spec.select = select i1 %tobool30.not, ptr %sih.091, ptr %call28
  %call33 = tail call i32 @request_threaded_irq(i32 noundef %add26, ptr noundef null, ptr noundef nonnull @handle_twl4030_sih, i32 noundef 139264, ptr noundef %spec.select, ptr noundef null) #9
  %add39 = add i32 %i.0.lcssa, %irq_base
  %sub = add i32 %add39, -1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.8, ptr noundef %sih.091, i32 noundef %add26, i32 noundef %irq_base, i32 noundef %sub) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp40 = icmp slt i32 %call33, 0
  %cond45 = select i1 %cmp40, i32 %call33, i32 %irq_base
  br label %cleanup

cleanup:                                          ; preds = %for.end25, %if.end8.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %cond45, %for.end25 ], [ -12, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_handler_data(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @handle_twl4030_sih(i32 noundef %irq, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  %isr.i = alloca %union.anon.69, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @irq_get_irq_data(i32 noundef %irq) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.irq_get_handler_data.exit_crit_edge, label %cond.true.i

entry.irq_get_handler_data.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %irq_get_handler_data.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %common.i = getelementptr inbounds %struct.irq_data, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %common.i, align 4
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handler_data.i, align 4
  br label %irq_get_handler_data.exit

irq_get_handler_data.exit:                        ; preds = %cond.true.i, %entry.irq_get_handler_data.exit_crit_edge
  %cond.i = phi ptr [ %3, %cond.true.i ], [ null, %entry.irq_get_handler_data.exit_crit_edge ]
  %sih1 = getelementptr inbounds %struct.sih_agent, ptr %cond.i, i32 0, i32 1
  %4 = ptrtoint ptr %sih1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sih1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %isr.i) #9
  %6 = ptrtoint ptr %isr.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %isr.i, align 4
  %module.i = getelementptr inbounds %struct.sih, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %module.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %module.i, align 1
  %mask.i = getelementptr inbounds %struct.sih, ptr %5, i32 0, i32 9
  %9 = ptrtoint ptr %mask.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %mask.i, align 1
  %bytes_ixr.i = getelementptr inbounds %struct.sih, ptr %5, i32 0, i32 5
  %11 = ptrtoint ptr %bytes_ixr.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bytes_ixr.i, align 1
  %conv.i = zext i8 %12 to i32
  %call.i31 = call i32 @twl_i2c_read(i8 noundef zeroext %8, ptr noundef nonnull %isr.i, i8 noundef zeroext %10, i32 noundef %conv.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31)
  %cmp.i = icmp slt i32 %call.i31, 0
  br i1 %cmp.i, label %sih_read_isr.exit.thread, label %sih_read_isr.exit

sih_read_isr.exit.thread:                         ; preds = %irq_get_handler_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %isr.i) #9
  br label %do.end

sih_read_isr.exit:                                ; preds = %irq_get_handler_data.exit
  %13 = ptrtoint ptr %isr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %isr.i, align 4
  %15 = call i32 @llvm.bswap.i32(i32 %14) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %isr.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp = icmp slt i32 %15, 0
  br i1 %cmp, label %sih_read_isr.exit.do.end_crit_edge, label %while.cond.preheader

sih_read_isr.exit.do.end_crit_edge:               ; preds = %sih_read_isr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

while.cond.preheader:                             ; preds = %sih_read_isr.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not36 = icmp eq i32 %14, 0
  br i1 %tobool.not36, label %while.cond.preheader.cleanup_crit_edge, label %while.body.lr.ph

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %bits = getelementptr inbounds %struct.sih, ptr %5, i32 0, i32 4
  br label %while.body

do.end:                                           ; preds = %sih_read_isr.exit.do.end_crit_edge, %sih_read_isr.exit.thread
  %cond.i3235 = phi i32 [ %call.i31, %sih_read_isr.exit.thread ], [ %15, %sih_read_isr.exit.do.end_crit_edge ]
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %5, i32 noundef %cond.i3235) #12
  br label %cleanup

while.body:                                       ; preds = %if.end15.while.body_crit_edge, %while.body.lr.ph
  %isr.037 = phi i32 [ %15, %while.body.lr.ph ], [ %and, %if.end15.while.body_crit_edge ]
  %16 = call i32 @llvm.ctlz.i32(i32 %isr.037, i1 true) #9, !range !118
  %dec = xor i32 %16, 31
  %shl = shl nuw i32 1, %dec
  %neg = xor i32 %shl, -1
  %and = and i32 %isr.037, %neg
  %17 = ptrtoint ptr %bits to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bits, align 1
  %conv = zext i8 %18 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %dec, i32 %conv)
  %cmp5 = icmp ult i32 %dec, %conv
  br i1 %cmp5, label %if.then7, label %do.end10

if.then7:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cond.i, align 4
  %add = add i32 %20, %dec
  call void @handle_nested_irq(i32 noundef %add) #9
  br label %if.end15

do.end10:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %5, i32 noundef %dec) #12
  br label %if.end15

if.end15:                                         ; preds = %do.end10, %if.then7
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end15.cleanup_crit_edge, label %if.end15.while.body_crit_edge

if.end15.while.body_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %if.end15.cleanup_crit_edge, %do.end, %while.cond.preheader.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @twl4030_init_irq(ptr noundef %dev, i32 noundef %irq_num) local_unnamed_addr #0 align 64 {
entry:
  %val.addr.i.i = alloca i8, align 1
  %buf.i = alloca [4 x i8], align 4
  %rxbuf.i = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call i32 @__irq_alloc_descs(i32 noundef -1, i32 noundef 0, i32 noundef 16, i32 noundef 0, ptr noundef null, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @irq_domain_add_legacy(ptr noundef %1, i32 noundef 16, i32 noundef %call, i32 noundef 0, ptr noundef nonnull @irq_domain_simple_ops, ptr noundef null) #9
  %add = add nuw i32 %call, 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #9
  %2 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %buf.i, align 4
  %3 = load i32, ptr @nr_sih_modules, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp12.i = icmp sgt i32 %3, 0
  br i1 %cmp12.i, label %for.body.preheader.i, label %if.end.twl4030_init_sih_modules.exit_crit_edge

if.end.twl4030_init_sih_modules.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %twl4030_init_sih_modules.exit

for.body.preheader.i:                             ; preds = %if.end
  %4 = load ptr, ptr @sih_modules, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %sih.04.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %4, %for.body.preheader.i ]
  %i.03.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %bytes_ixr.i = getelementptr inbounds %struct.sih, ptr %sih.04.i, i32 0, i32 5
  %5 = ptrtoint ptr %bytes_ixr.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bytes_ixr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end3.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end3.i:                                        ; preds = %for.body.i
  %irq_lines.i = getelementptr inbounds %struct.sih, ptr %sih.04.i, i32 0, i32 8
  %7 = ptrtoint ptr %irq_lines.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %irq_lines.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp4.i = icmp eq i8 %8, 0
  br i1 %cmp4.i, label %if.end3.i.for.inc.i_crit_edge, label %if.end7.i

if.end3.i.for.inc.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end7.i:                                        ; preds = %if.end3.i
  %module.i = getelementptr inbounds %struct.sih, ptr %sih.04.i, i32 0, i32 1
  %9 = ptrtoint ptr %module.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %module.i, align 1
  %imr_offset.i = getelementptr inbounds %struct.sih, ptr %sih.04.i, i32 0, i32 9, i32 0, i32 1
  %11 = ptrtoint ptr %imr_offset.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %imr_offset.i, align 1
  %conv10.i = zext i8 %6 to i32
  %call.i = call i32 @twl_i2c_write(i8 noundef zeroext %10, ptr noundef nonnull %buf.i, i8 noundef zeroext %12, i32 noundef %conv10.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp11.i = icmp slt i32 %call.i, 0
  br i1 %cmp11.i, label %do.end.i, label %if.end7.i.if.end16.i_crit_edge

if.end7.i.if.end16.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.i

do.end.i:                                         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %call.i, ptr noundef %sih.04.i, ptr noundef nonnull @.str.42) #12
  br label %if.end16.i

if.end16.i:                                       ; preds = %do.end.i, %if.end7.i.if.end16.i_crit_edge
  %set_cor.i = getelementptr inbounds %struct.sih, ptr %sih.04.i, i32 0, i32 3
  %13 = ptrtoint ptr %set_cor.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %set_cor.i, align 1, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool17.not.i = icmp eq i8 %14, 0
  br i1 %tobool17.not.i, label %if.end16.i.for.inc.i_crit_edge, label %if.then18.i

if.end16.i.for.inc.i_crit_edge:                   ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then18.i:                                      ; preds = %if.end16.i
  %15 = ptrtoint ptr %module.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %module.i, align 1
  %control_offset.i = getelementptr inbounds %struct.sih, ptr %sih.04.i, i32 0, i32 2
  %17 = ptrtoint ptr %control_offset.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %control_offset.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i) #9
  %19 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 4, ptr %val.addr.i.i, align 1
  %call.i.i = call i32 @twl_i2c_write(i8 noundef zeroext %16, ptr noundef nonnull %val.addr.i.i, i8 noundef zeroext %18, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp21.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp21.i, label %do.end26.i, label %if.then18.i.for.inc.i_crit_edge

if.then18.i.for.inc.i_crit_edge:                  ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

do.end26.i:                                       ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #11
  %call30.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %call.i.i, ptr noundef %sih.04.i, ptr noundef nonnull @.str.45) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end26.i, %if.then18.i.for.inc.i_crit_edge, %if.end16.i.for.inc.i_crit_edge, %if.end3.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %incdec.ptr.i = getelementptr %struct.sih, ptr %sih.04.i, i32 1
  %20 = load i32, ptr @nr_sih_modules, align 4
  %cmp1.i = icmp slt i32 %inc.i, %20
  br i1 %cmp1.i, label %for.inc.i.for.body.i_crit_edge, label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp347.i = icmp sgt i32 %20, 0
  br i1 %cmp347.i, label %for.body36.lr.ph.i, label %for.end.i.twl4030_init_sih_modules.exit_crit_edge

for.end.i.twl4030_init_sih_modules.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %twl4030_init_sih_modules.exit

for.body36.lr.ph.i:                               ; preds = %for.end.i
  %21 = load ptr, ptr @sih_modules, align 4
  br label %for.body36.i

for.body36.i:                                     ; preds = %cleanup.i.for.body36.i_crit_edge, %for.body36.lr.ph.i
  %sih.19.i = phi ptr [ %21, %for.body36.lr.ph.i ], [ %incdec.ptr96.i, %cleanup.i.for.body36.i_crit_edge ]
  %i.18.i = phi i32 [ 0, %for.body36.lr.ph.i ], [ %inc95.i, %cleanup.i.for.body36.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rxbuf.i) #9
  %bytes_ixr37.i = getelementptr inbounds %struct.sih, ptr %sih.19.i, i32 0, i32 5
  %22 = ptrtoint ptr %rxbuf.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %rxbuf.i, align 4
  %23 = ptrtoint ptr %bytes_ixr37.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %bytes_ixr37.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool38.not.i = icmp eq i8 %24, 0
  br i1 %tobool38.not.i, label %for.body36.i.cleanup.i_crit_edge, label %if.end40.i

for.body36.i.cleanup.i_crit_edge:                 ; preds = %for.body36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.end40.i:                                       ; preds = %for.body36.i
  %irq_lines41.i = getelementptr inbounds %struct.sih, ptr %sih.19.i, i32 0, i32 8
  %25 = ptrtoint ptr %irq_lines41.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %irq_lines41.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp43.i = icmp eq i8 %26, 0
  br i1 %cmp43.i, label %if.end40.i.cleanup.i_crit_edge, label %for.cond47.preheader.i

if.end40.i.cleanup.i_crit_edge:                   ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

for.cond47.preheader.i:                           ; preds = %if.end40.i
  %module51.i = getelementptr inbounds %struct.sih, ptr %sih.19.i, i32 0, i32 1
  %mask53.i = getelementptr inbounds %struct.sih, ptr %sih.19.i, i32 0, i32 9
  %set_cor69.i = getelementptr inbounds %struct.sih, ptr %sih.19.i, i32 0, i32 3
  %27 = ptrtoint ptr %module51.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %module51.i, align 1
  %29 = ptrtoint ptr %mask53.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %mask53.i, align 1
  %conv56.i = zext i8 %24 to i32
  %call57.i = call i32 @twl_i2c_read(i8 noundef zeroext %28, ptr noundef nonnull %rxbuf.i, i8 noundef zeroext %30, i32 noundef %conv56.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i)
  %cmp58.i = icmp slt i32 %call57.i, 0
  br i1 %cmp58.i, label %do.end63.i, label %for.cond47.preheader.i.if.end68.i_crit_edge

for.cond47.preheader.i.if.end68.i_crit_edge:      ; preds = %for.cond47.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68.i

do.end63.i:                                       ; preds = %for.cond47.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  %call67.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef %call57.i, ptr noundef %sih.19.i, ptr noundef nonnull @.str.49) #12
  br label %if.end68.i

if.end68.i:                                       ; preds = %do.end63.i, %for.cond47.preheader.i.if.end68.i_crit_edge
  %31 = ptrtoint ptr %set_cor69.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %set_cor69.i, align 1, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool70.not.i = icmp eq i8 %32, 0
  br i1 %tobool70.not.i, label %if.then71.i, label %if.end68.i.for.inc90.i_crit_edge

if.end68.i.for.inc90.i_crit_edge:                 ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc90.i

if.then71.i:                                      ; preds = %if.end68.i
  %33 = ptrtoint ptr %module51.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %module51.i, align 1
  %35 = ptrtoint ptr %mask53.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %mask53.i, align 1
  %37 = ptrtoint ptr %bytes_ixr37.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %bytes_ixr37.i, align 1
  %conv78.i = zext i8 %38 to i32
  %call79.i = call i32 @twl_i2c_write(i8 noundef zeroext %34, ptr noundef nonnull %buf.i, i8 noundef zeroext %36, i32 noundef %conv78.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79.i)
  %cmp80.i = icmp slt i32 %call79.i, 0
  br i1 %cmp80.i, label %do.end85.i, label %if.then71.i.for.inc90.i_crit_edge

if.then71.i.for.inc90.i_crit_edge:                ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc90.i

do.end85.i:                                       ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #11
  %call87.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %call79.i) #12
  br label %for.inc90.i

for.inc90.i:                                      ; preds = %do.end85.i, %if.then71.i.for.inc90.i_crit_edge, %if.end68.i.for.inc90.i_crit_edge
  %39 = ptrtoint ptr %module51.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %module51.i, align 1
  %41 = ptrtoint ptr %mask53.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %mask53.i, align 1
  %43 = ptrtoint ptr %bytes_ixr37.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %bytes_ixr37.i, align 1
  %conv56.1.i = zext i8 %44 to i32
  %call57.1.i = call i32 @twl_i2c_read(i8 noundef zeroext %40, ptr noundef nonnull %rxbuf.i, i8 noundef zeroext %42, i32 noundef %conv56.1.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.1.i)
  %cmp58.1.i = icmp slt i32 %call57.1.i, 0
  br i1 %cmp58.1.i, label %do.end63.1.i, label %for.inc90.i.if.end68.1.i_crit_edge

for.inc90.i.if.end68.1.i_crit_edge:               ; preds = %for.inc90.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68.1.i

do.end63.1.i:                                     ; preds = %for.inc90.i
  call void @__sanitizer_cov_trace_pc() #11
  %call67.1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef %call57.1.i, ptr noundef %sih.19.i, ptr noundef nonnull @.str.49) #12
  br label %if.end68.1.i

if.end68.1.i:                                     ; preds = %do.end63.1.i, %for.inc90.i.if.end68.1.i_crit_edge
  %45 = ptrtoint ptr %set_cor69.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %set_cor69.i, align 1, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool70.not.1.i = icmp eq i8 %46, 0
  br i1 %tobool70.not.1.i, label %if.then71.1.i, label %if.end68.1.i.cleanup.i_crit_edge

if.end68.1.i.cleanup.i_crit_edge:                 ; preds = %if.end68.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.then71.1.i:                                    ; preds = %if.end68.1.i
  %47 = ptrtoint ptr %module51.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %module51.i, align 1
  %49 = ptrtoint ptr %mask53.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %mask53.i, align 1
  %51 = ptrtoint ptr %bytes_ixr37.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %bytes_ixr37.i, align 1
  %conv78.1.i = zext i8 %52 to i32
  %call79.1.i = call i32 @twl_i2c_write(i8 noundef zeroext %48, ptr noundef nonnull %buf.i, i8 noundef zeroext %50, i32 noundef %conv78.1.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79.1.i)
  %cmp80.1.i = icmp slt i32 %call79.1.i, 0
  br i1 %cmp80.1.i, label %do.end85.1.i, label %if.then71.1.i.cleanup.i_crit_edge

if.then71.1.i.cleanup.i_crit_edge:                ; preds = %if.then71.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

do.end85.1.i:                                     ; preds = %if.then71.1.i
  call void @__sanitizer_cov_trace_pc() #11
  %call87.1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %call79.1.i) #12
  br label %cleanup.i

cleanup.i:                                        ; preds = %do.end85.1.i, %if.then71.1.i.cleanup.i_crit_edge, %if.end68.1.i.cleanup.i_crit_edge, %if.end40.i.cleanup.i_crit_edge, %for.body36.i.cleanup.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rxbuf.i) #9
  %inc95.i = add nuw nsw i32 %i.18.i, 1
  %incdec.ptr96.i = getelementptr %struct.sih, ptr %sih.19.i, i32 1
  %53 = load i32, ptr @nr_sih_modules, align 4
  %cmp34.i = icmp slt i32 %inc95.i, %53
  br i1 %cmp34.i, label %cleanup.i.for.body36.i_crit_edge, label %cleanup.i.twl4030_init_sih_modules.exit_crit_edge

cleanup.i.twl4030_init_sih_modules.exit_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %twl4030_init_sih_modules.exit

cleanup.i.for.body36.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body36.i

twl4030_init_sih_modules.exit:                    ; preds = %cleanup.i.twl4030_init_sih_modules.exit_crit_edge, %for.end.i.twl4030_init_sih_modules.exit_crit_edge, %if.end.twl4030_init_sih_modules.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #9
  store i32 %call, ptr @twl4030_irq_base, align 4
  %54 = call ptr @memcpy(ptr @twl4030_init_irq.twl4030_irq_chip, ptr @dummy_irq_chip, i32 136)
  store ptr @.str.13, ptr getelementptr inbounds (%struct.irq_chip, ptr @twl4030_init_irq.twl4030_irq_chip, i32 0, i32 1), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.irq_chip, ptr @dummy_irq_chip, i32 0, i32 6) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.irq_chip, ptr @dummy_irq_chip, i32 0, i32 6), align 4
  store ptr %55, ptr getelementptr inbounds (%struct.irq_chip, ptr @twl4030_sih_irq_chip, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483640, i32 %call)
  %cmp671 = icmp slt i32 %call, 2147483640
  br i1 %cmp671, label %for.body.preheader, label %twl4030_init_sih_modules.exit.do.end9_crit_edge

twl4030_init_sih_modules.exit.do.end9_crit_edge:  ; preds = %twl4030_init_sih_modules.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9

for.body.preheader:                               ; preds = %twl4030_init_sih_modules.exit
  call void @irq_set_chip_and_handler_name(i32 noundef %call, ptr noundef nonnull @twl4030_init_irq.twl4030_irq_chip, ptr noundef nonnull @handle_simple_irq, ptr noundef null) #9
  call void @irq_modify_status(i32 noundef %call, i32 noundef 0, i32 noundef 32768) #9
  call void @irq_modify_status(i32 noundef %call, i32 noundef 3072, i32 noundef 0) #9
  %inc = add nsw i32 %call, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %add)
  %cmp6 = icmp slt i32 %inc, %add
  br i1 %cmp6, label %for.body.1, label %for.body.preheader.do.end9_crit_edge

for.body.preheader.do.end9_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9

for.body.1:                                       ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  call void @irq_set_chip_and_handler_name(i32 noundef %inc, ptr noundef nonnull @twl4030_init_irq.twl4030_irq_chip, ptr noundef nonnull @handle_simple_irq, ptr noundef null) #9
  call void @irq_modify_status(i32 noundef %inc, i32 noundef 0, i32 noundef 32768) #9
  call void @irq_modify_status(i32 noundef %inc, i32 noundef 3072, i32 noundef 0) #9
  %inc.1 = add nsw i32 %call, 2
  call void @irq_set_chip_and_handler_name(i32 noundef %inc.1, ptr noundef nonnull @twl4030_init_irq.twl4030_irq_chip, ptr noundef nonnull @handle_simple_irq, ptr noundef null) #9
  call void @irq_modify_status(i32 noundef %inc.1, i32 noundef 0, i32 noundef 32768) #9
  call void @irq_modify_status(i32 noundef %inc.1, i32 noundef 3072, i32 noundef 0) #9
  %inc.2 = add nsw i32 %call, 3
  call void @irq_set_chip_and_handler_name(i32 noundef %inc.2, ptr noundef nonnull @twl4030_init_irq.twl4030_irq_chip, ptr noundef nonnull @handle_simple_irq, ptr noundef null) #9
  call void @irq_modify_status(i32 noundef %inc.2, i32 noundef 0, i32 noundef 32768) #9
  call void @irq_modify_status(i32 noundef %inc.2, i32 noundef 3072, i32 noundef 0) #9
  %inc.3 = add nsw i32 %call, 4
  call void @irq_set_chip_and_handler_name(i32 noundef %inc.3, ptr noundef nonnull @twl4030_init_irq.twl4030_irq_chip, ptr noundef nonnull @handle_simple_irq, ptr noundef null) #9
  call void @irq_modify_status(i32 noundef %inc.3, i32 noundef 0, i32 noundef 32768) #9
  call void @irq_modify_status(i32 noundef %inc.3, i32 noundef 3072, i32 noundef 0) #9
  %inc.4 = add nsw i32 %call, 5
  call void @irq_set_chip_and_handler_name(i32 noundef %inc.4, ptr noundef nonnull @twl4030_init_irq.twl4030_irq_chip, ptr noundef nonnull @handle_simple_irq, ptr noundef null) #9
  call void @irq_modify_status(i32 noundef %inc.4, i32 noundef 0, i32 noundef 32768) #9
  call void @irq_modify_status(i32 noundef %inc.4, i32 noundef 3072, i32 noundef 0) #9
  %inc.5 = add nsw i32 %call, 6
  call void @irq_set_chip_and_handler_name(i32 noundef %inc.5, ptr noundef nonnull @twl4030_init_irq.twl4030_irq_chip, ptr noundef nonnull @handle_simple_irq, ptr noundef null) #9
  call void @irq_modify_status(i32 noundef %inc.5, i32 noundef 0, i32 noundef 32768) #9
  call void @irq_modify_status(i32 noundef %inc.5, i32 noundef 3072, i32 noundef 0) #9
  %inc.6 = add nsw i32 %call, 7
  call void @irq_set_chip_and_handler_name(i32 noundef %inc.6, ptr noundef nonnull @twl4030_init_irq.twl4030_irq_chip, ptr noundef nonnull @handle_simple_irq, ptr noundef null) #9
  call void @irq_modify_status(i32 noundef %inc.6, i32 noundef 0, i32 noundef 32768) #9
  call void @irq_modify_status(i32 noundef %inc.6, i32 noundef 3072, i32 noundef 0) #9
  br label %do.end9

do.end9:                                          ; preds = %for.body.1, %for.body.preheader.do.end9_crit_edge, %twl4030_init_sih_modules.exit.do.end9_crit_edge
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.16, i32 noundef %irq_num, i32 noundef %call, i32 noundef %add) #12
  %call10 = call i32 @twl4030_sih_setup(ptr noundef %dev, i32 noundef 18, i32 noundef %add)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %do.end15, label %if.end16

do.end15:                                         ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %call10) #12
  br label %fail

if.end16:                                         ; preds = %do.end9
  %call17 = call i32 @request_threaded_irq(i32 noundef %irq_num, ptr noundef null, ptr noundef nonnull @handle_twl4030_pih, i32 noundef 8192, ptr noundef nonnull @.str.20, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %do.end22, label %if.end23

do.end22:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef %irq_num, i32 noundef %call17) #12
  br label %fail

if.end23:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %call.i70 = call i32 @irq_set_irq_wake(i32 noundef %irq_num, i32 noundef 1) #9
  br label %cleanup

fail:                                             ; preds = %do.end22, %do.end15
  %status.0 = phi i32 [ %call10, %do.end15 ], [ %call17, %do.end22 ]
  br i1 %cmp671, label %for.body27.preheader, label %fail.cleanup_crit_edge

fail.cleanup_crit_edge:                           ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body27.preheader:                             ; preds = %fail
  call void @irq_modify_status(i32 noundef %call, i32 noundef 32768, i32 noundef 0) #9
  call void @irq_set_chip_and_handler_name(i32 noundef %call, ptr noundef null, ptr noundef null, ptr noundef null) #9
  %inc29 = add nsw i32 %call, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc29, i32 %add)
  %cmp26 = icmp slt i32 %inc29, %add
  br i1 %cmp26, label %for.body27.1, label %for.body27.preheader.cleanup_crit_edge

for.body27.preheader.cleanup_crit_edge:           ; preds = %for.body27.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body27.1:                                     ; preds = %for.body27.preheader
  call void @__sanitizer_cov_trace_pc() #11
  call void @irq_modify_status(i32 noundef %inc29, i32 noundef 32768, i32 noundef 0) #9
  call void @irq_set_chip_and_handler_name(i32 noundef %inc29, ptr noundef null, ptr noundef null, ptr noundef null) #9
  %inc29.1 = add nsw i32 %call, 2
  call void @irq_modify_status(i32 noundef %inc29.1, i32 noundef 32768, i32 noundef 0) #9
  call void @irq_set_chip_and_handler_name(i32 noundef %inc29.1, ptr noundef null, ptr noundef null, ptr noundef null) #9
  %inc29.2 = add nsw i32 %call, 3
  call void @irq_modify_status(i32 noundef %inc29.2, i32 noundef 32768, i32 noundef 0) #9
  call void @irq_set_chip_and_handler_name(i32 noundef %inc29.2, ptr noundef null, ptr noundef null, ptr noundef null) #9
  %inc29.3 = add nsw i32 %call, 4
  call void @irq_modify_status(i32 noundef %inc29.3, i32 noundef 32768, i32 noundef 0) #9
  call void @irq_set_chip_and_handler_name(i32 noundef %inc29.3, ptr noundef null, ptr noundef null, ptr noundef null) #9
  %inc29.4 = add nsw i32 %call, 5
  call void @irq_modify_status(i32 noundef %inc29.4, i32 noundef 32768, i32 noundef 0) #9
  call void @irq_set_chip_and_handler_name(i32 noundef %inc29.4, ptr noundef null, ptr noundef null, ptr noundef null) #9
  %inc29.5 = add nsw i32 %call, 6
  call void @irq_modify_status(i32 noundef %inc29.5, i32 noundef 32768, i32 noundef 0) #9
  call void @irq_set_chip_and_handler_name(i32 noundef %inc29.5, ptr noundef null, ptr noundef null, ptr noundef null) #9
  %inc29.6 = add nsw i32 %call, 7
  call void @irq_modify_status(i32 noundef %inc29.6, i32 noundef 32768, i32 noundef 0) #9
  call void @irq_set_chip_and_handler_name(i32 noundef %inc29.6, ptr noundef null, ptr noundef null, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %for.body27.1, %for.body27.preheader.cleanup_crit_edge, %fail.cleanup_crit_edge, %if.end23, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call, %if.end23 ], [ %status.0, %fail.cleanup_crit_edge ], [ %status.0, %for.body27.1 ], [ %status.0, %for.body27.preheader.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_alloc_descs(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_add_legacy(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_simple_irq(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @handle_twl4030_pih(i32 noundef %irq, ptr nocapture noundef readnone %devid) #0 align 64 {
entry:
  %pih_isr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pih_isr) #9
  %0 = ptrtoint ptr %pih_isr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %pih_isr, align 1, !annotation !119
  %call.i = call i32 @twl_i2c_read(i8 noundef zeroext 1, ptr noundef nonnull %pih_isr, i8 noundef zeroext 1, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %while.cond.preheader, label %do.end

while.cond.preheader:                             ; preds = %entry
  %1 = ptrtoint ptr %pih_isr to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %pih_isr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool2.not10 = icmp eq i8 %2, 0
  br i1 %tobool2.not10, label %while.cond.preheader.cleanup_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef %call.i) #12
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %3 = phi i8 [ %10, %while.body.while.body_crit_edge ], [ %2, %while.cond.preheader.while.body_crit_edge ]
  %4 = call i8 @llvm.cttz.i8(i8 %3, i1 true), !range !120
  %5 = zext i8 %4 to i32
  %shl = shl nuw i8 1, %4
  %6 = xor i8 %shl, -1
  %conv6 = and i8 %3, %6
  %7 = ptrtoint ptr %pih_isr to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv6, ptr %pih_isr, align 1
  %8 = load i32, ptr @twl4030_irq_base, align 4
  %add = add i32 %8, %5
  call void @handle_nested_irq(i32 noundef %add) #9
  %9 = ptrtoint ptr %pih_isr to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %pih_isr, align 1
  %tobool2.not = icmp eq i8 %10, 0
  br i1 %tobool2.not, label %while.body.cleanup_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %do.end, %while.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ 1, %while.cond.preheader.cleanup_crit_edge ], [ 1, %while.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pih_isr) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @twl4030_exit_irq() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @twl4030_irq_base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %do.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #12
  br label %return

return:                                           ; preds = %do.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ -38, %do.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @twl4030_init_chip_irq(ptr nocapture noundef readonly %chip) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strcmp(ptr noundef %chip, ptr noundef nonnull dereferenceable(8) @.str.26) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %sih_modules_twl5031.sih_modules_twl4030 = select i1 %tobool.not, ptr @sih_modules_twl5031, ptr @sih_modules_twl4030
  %. = select i1 %tobool.not, i32 8, i32 6
  store ptr %sih_modules_twl5031.sih_modules_twl4030, ptr @sih_modules, align 4
  store i32 %., ptr @nr_sih_modules, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @twl4030_sih_mask(ptr nocapture noundef readonly %data) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %irq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %sub = sub i32 %3, %5
  %shl = shl nuw i32 1, %sub
  %imr = getelementptr inbounds %struct.sih_agent, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %imr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %imr, align 4
  %or = or i32 %shl, %7
  store i32 %or, ptr %imr, align 4
  %imr_change_pending = getelementptr inbounds %struct.sih_agent, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %imr_change_pending to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %imr_change_pending, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @twl4030_sih_unmask(ptr nocapture noundef readonly %data) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %irq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %sub = sub i32 %3, %5
  %shl = shl nuw i32 1, %sub
  %neg = xor i32 %shl, -1
  %imr = getelementptr inbounds %struct.sih_agent, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %imr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %imr, align 4
  %and = and i32 %7, %neg
  store i32 %and, ptr %imr, align 4
  %imr_change_pending = getelementptr inbounds %struct.sih_agent, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %imr_change_pending to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %imr_change_pending, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @twl4030_sih_set_type(ptr nocapture noundef readonly %data, i32 noundef %trigger) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %trigger)
  %tobool.not = icmp ult i32 %trigger, 4
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %common.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 3
  %2 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %common.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %and.i = and i32 %5, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %trigger)
  %cmp.not = icmp eq i32 %and.i, %trigger
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %irq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 1
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 4
  %sub = sub i32 %7, %9
  %shl = shl nuw i32 1, %sub
  %edge_change = getelementptr inbounds %struct.sih_agent, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %edge_change to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %edge_change, align 4
  %or = or i32 %shl, %11
  store i32 %or, ptr %edge_change, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then2 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @twl4030_sih_bus_lock(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %irq_lock = getelementptr inbounds %struct.sih_agent, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %irq_lock, i32 noundef 0) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @twl4030_sih_bus_sync_unlock(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  %imr = alloca %union.anon.68, align 4
  %bytes = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %sih1 = getelementptr inbounds %struct.sih_agent, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %sih1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sih1, align 4
  %imr_change_pending = getelementptr inbounds %struct.sih_agent, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %imr_change_pending to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %imr_change_pending, align 4, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %imr) #9
  %imr2 = getelementptr inbounds %struct.sih_agent, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %imr2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %imr2, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %9 = ptrtoint ptr %imr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %imr, align 4
  %10 = ptrtoint ptr %imr_change_pending to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %imr_change_pending, align 4
  %module = getelementptr inbounds %struct.sih, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %module to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %module, align 1
  %imr_offset = getelementptr inbounds %struct.sih, ptr %3, i32 0, i32 9, i32 0, i32 1
  %13 = ptrtoint ptr %imr_offset to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %imr_offset, align 1
  %bytes_ixr = getelementptr inbounds %struct.sih, ptr %3, i32 0, i32 5
  %15 = ptrtoint ptr %bytes_ixr to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bytes_ixr, align 1
  %conv = zext i8 %16 to i32
  %call4 = call i32 @twl_i2c_write(i8 noundef zeroext %12, ptr noundef nonnull %imr, i8 noundef zeroext %14, i32 noundef %conv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then.if.end_crit_edge, label %do.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef %call4) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %imr) #9
  br label %if.end8

if.end8:                                          ; preds = %if.end, %entry.if.end8_crit_edge
  %edge_change = getelementptr inbounds %struct.sih_agent, ptr %1, i32 0, i32 4
  %17 = ptrtoint ptr %edge_change to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %edge_change, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool9.not = icmp eq i32 %18, 0
  br i1 %tobool9.not, label %if.end8.if.end70_crit_edge, label %if.then10

if.end8.if.end70_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

if.then10:                                        ; preds = %if.end8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %bytes) #9
  %19 = call ptr @memset(ptr %bytes, i32 255, i32 6)
  %20 = ptrtoint ptr %edge_change to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %edge_change, align 4
  %module14 = getelementptr inbounds %struct.sih, ptr %3, i32 0, i32 1
  %21 = ptrtoint ptr %module14 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %module14, align 1
  %edr_offset = getelementptr inbounds %struct.sih, ptr %3, i32 0, i32 6
  %23 = ptrtoint ptr %edr_offset to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %edr_offset, align 1
  %bytes_edr = getelementptr inbounds %struct.sih, ptr %3, i32 0, i32 7
  %25 = ptrtoint ptr %bytes_edr to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %bytes_edr, align 1
  %conv16 = zext i8 %26 to i32
  %call17 = call i32 @twl_i2c_read(i8 noundef zeroext %22, ptr noundef nonnull %bytes, i8 noundef zeroext %24, i32 noundef %conv16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then10.while.body_crit_edge, label %cleanup.thread

if.then10.while.body_crit_edge:                   ; preds = %if.then10
  br label %while.body

cleanup.thread:                                   ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.32, i32 noundef %call17) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %bytes) #9
  br label %cleanup71

while.body:                                       ; preds = %if.end51.while.body_crit_edge, %if.then10.while.body_crit_edge
  %edge_change11.0115 = phi i32 [ %and54, %if.end51.while.body_crit_edge ], [ %18, %if.then10.while.body_crit_edge ]
  %27 = call i32 @llvm.ctlz.i32(i32 %edge_change11.0115, i1 true) #9, !range !118
  %sub = xor i32 %27, 31
  %28 = lshr i32 %sub, 2
  %and = shl nuw nsw i32 %sub, 1
  %mul = and i32 %and, 6
  %shl = shl nuw nsw i32 3, %mul
  %arrayidx28 = getelementptr [6 x i8], ptr %bytes, i32 0, i32 %28
  %29 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx28, align 1
  %31 = trunc i32 %shl to i8
  %32 = xor i8 %31, -1
  %conv31 = and i8 %30, %32
  store i8 %conv31, ptr %arrayidx28, align 1
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %1, align 4
  %add = add i32 %34, %sub
  %call.i = call ptr @irq_get_irq_data(i32 noundef %add) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %while.body.if.end51_crit_edge, label %irq_get_trigger_type.exit

while.body.if.end51_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

irq_get_trigger_type.exit:                        ; preds = %while.body
  %common.i.i = getelementptr inbounds %struct.irq_data, ptr %call.i, i32 0, i32 3
  %35 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %common.i.i, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 4
  %and33 = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %irq_get_trigger_type.exit.if.end41_crit_edge, label %if.then35

irq_get_trigger_type.exit.if.end41_crit_edge:     ; preds = %irq_get_trigger_type.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.then35:                                        ; preds = %irq_get_trigger_type.exit
  call void @__sanitizer_cov_trace_pc() #11
  %add36 = or i32 %mul, 1
  %shl37 = shl nuw i32 1, %add36
  %39 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx28, align 1
  %41 = trunc i32 %shl37 to i8
  %conv40 = or i8 %40, %41
  store i8 %conv40, ptr %arrayidx28, align 1
  br label %if.end41

if.end41:                                         ; preds = %if.then35, %irq_get_trigger_type.exit.if.end41_crit_edge
  %and42 = and i32 %38, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.end41.if.end51_crit_edge, label %if.then44

if.end41.if.end51_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.then44:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  %shl46 = shl nuw nsw i32 1, %mul
  %42 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx28, align 1
  %44 = trunc i32 %shl46 to i8
  %conv50 = or i8 %43, %44
  store i8 %conv50, ptr %arrayidx28, align 1
  br label %if.end51

if.end51:                                         ; preds = %if.then44, %if.end41.if.end51_crit_edge, %while.body.if.end51_crit_edge
  %shl52 = shl nuw i32 1, %sub
  %neg53 = xor i32 %shl52, -1
  %and54 = and i32 %edge_change11.0115, %neg53
  %tobool26.not = icmp eq i32 %and54, 0
  br i1 %tobool26.not, label %while.end, label %if.end51.while.body_crit_edge

if.end51.while.body_crit_edge:                    ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %if.end51
  %45 = ptrtoint ptr %module14 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %module14, align 1
  %47 = ptrtoint ptr %edr_offset to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %edr_offset, align 1
  %49 = ptrtoint ptr %bytes_edr to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %bytes_edr, align 1
  %conv59 = zext i8 %50 to i32
  %call60 = call i32 @twl_i2c_write(i8 noundef zeroext %46, ptr noundef nonnull %bytes, i8 noundef zeroext %48, i32 noundef %conv59) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %while.end.cleanup_crit_edge, label %do.end65

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end65:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %call67 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef %call60) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end65, %while.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %bytes) #9
  br label %if.end70

if.end70:                                         ; preds = %cleanup, %if.end8.if.end70_crit_edge
  %irq_lock = getelementptr inbounds %struct.sih_agent, ptr %1, i32 0, i32 5
  call void @mutex_unlock(ptr noundef %irq_lock) #9
  br label %cleanup71

cleanup71:                                        ; preds = %if.end70, %cleanup.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl_i2c_write(i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl_i2c_read(i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_nested_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.cttz.i8(i8, i1 immarg) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !13, !15, !16, !17, !18, !20, !22, !23, !24, !25, !27, !29, !30, !31, !33, !34, !35, !37, !39, !40, !41, !43, !44, !45, !46, !48, !50, !52, !54, !56, !58, !59, !60, !61, !62, !64, !65, !66, !68, !69, !71, !73, !74, !75, !76, !78, !79, !80, !82, !83, !84, !85, !86, !88, !89, !90, !92, !93, !94, !95, !97, !98, !99, !101, !102, !103, !104, !106}
!llvm.module.flags = !{!108, !109, !110, !111, !112, !113, !114, !115}
!llvm.ident = !{!116}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mfd/twl4030-irq.c", i32 629, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @twl4030_sih_setup._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @twl4030_sih_setup._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @twl4030_sih_setup.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../drivers/mfd/twl4030-irq.c", i32 640, i32 2}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/mfd/twl4030-irq.c", i32 655, i32 42}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/mfd/twl4030-irq.c", i32 660, i32 2}
!15 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @twl4030_sih_setup._entry.7, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @twl4030_sih_setup._entry_ptr.10, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @twl4030_init_irq.twl4030_irq_chip, !19, !"twl4030_irq_chip", i1 false, i1 false}
!19 = !{!"../drivers/mfd/twl4030-irq.c", i32 675, i32 25}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/mfd/twl4030-irq.c", i32 689, i32 3}
!22 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @twl4030_init_irq._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @twl4030_init_irq._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/mfd/twl4030-irq.c", i32 713, i32 26}
!27 = !{ptr @twl4030_init_irq._entry.14, !28, !"_entry", i1 false, i1 false}
!28 = !{!"../drivers/mfd/twl4030-irq.c", i32 724, i32 2}
!29 = !{ptr @twl4030_init_irq._entry_ptr.15, !28, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/mfd/twl4030-irq.c", i32 730, i32 3}
!33 = !{ptr @twl4030_init_irq._entry.17, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @twl4030_init_irq._entry_ptr.19, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/mfd/twl4030-irq.c", i32 737, i32 11}
!37 = !{ptr @.str.22, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/mfd/twl4030-irq.c", i32 739, i32 3}
!39 = !{ptr @twl4030_init_irq._entry.21, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @twl4030_init_irq._entry_ptr.23, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.24, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/mfd/twl4030-irq.c", i32 760, i32 3}
!43 = !{ptr @.str.25, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @twl4030_exit_irq._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @twl4030_exit_irq._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.26, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/mfd/twl4030-irq.c", i32 768, i32 20}
!48 = !{ptr @sih_modules, !49, !"sih_modules", i1 false, i1 false}
!49 = !{!"../drivers/mfd/twl4030-irq.c", i32 77, i32 26}
!50 = !{ptr @nr_sih_modules, !51, !"nr_sih_modules", i1 false, i1 false}
!51 = !{!"../drivers/mfd/twl4030-irq.c", i32 78, i32 12}
!52 = !{ptr @twl4030_irq_base, !53, !"twl4030_irq_base", i1 false, i1 false}
!53 = !{!"../drivers/mfd/twl4030-irq.c", i32 268, i32 17}
!54 = !{ptr @twl4030_sih_irq_chip, !55, !"twl4030_sih_irq_chip", i1 false, i1 false}
!55 = !{!"../drivers/mfd/twl4030-irq.c", i32 547, i32 24}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/mfd/twl4030-irq.c", i32 493, i32 4}
!58 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @twl4030_sih_bus_sync_unlock._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @twl4030_sih_bus_sync_unlock._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @twl4030_sih_bus_sync_unlock._entry.30, !63, !"_entry", i1 false, i1 false}
!63 = !{!"../drivers/mfd/twl4030-irq.c", i32 513, i32 4}
!64 = !{ptr @twl4030_sih_bus_sync_unlock._entry_ptr.31, !63, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @twl4030_sih_bus_sync_unlock._entry.33, !67, !"_entry", i1 false, i1 false}
!67 = !{!"../drivers/mfd/twl4030-irq.c", i32 540, i32 4}
!68 = !{ptr @twl4030_sih_bus_sync_unlock._entry_ptr.34, !67, !"_entry_ptr", i1 false, i1 false}
!69 = distinct !{null, !70, !"irq_line", i1 false, i1 false}
!70 = !{!"../drivers/mfd/twl4030-irq.c", i32 53, i32 12}
!71 = !{ptr @.str.35, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/mfd/twl4030-irq.c", i32 590, i32 3}
!73 = !{ptr @.str.36, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @handle_twl4030_sih._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @handle_twl4030_sih._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/mfd/twl4030-irq.c", i32 604, i32 4}
!78 = !{ptr @handle_twl4030_sih._entry.37, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @handle_twl4030_sih._entry_ptr.39, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/mfd/twl4030-irq.c", i32 342, i32 4}
!82 = !{ptr @.str.41, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @twl4030_init_sih_modules._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @twl4030_init_sih_modules._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.42, !81, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @twl4030_init_sih_modules._entry.43, !87, !"_entry", i1 false, i1 false}
!87 = !{!"../drivers/mfd/twl4030-irq.c", i32 358, i32 5}
!88 = !{ptr @twl4030_init_sih_modules._entry_ptr.44, !87, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.45, !87, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.47, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/mfd/twl4030-irq.c", i32 386, i32 5}
!92 = !{ptr @twl4030_init_sih_modules._entry.46, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @twl4030_init_sih_modules._entry_ptr.48, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.49, !91, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.51, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/mfd/twl4030-irq.c", i32 394, i32 6}
!97 = !{ptr @twl4030_init_sih_modules._entry.50, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @twl4030_init_sih_modules._entry_ptr.52, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.53, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/mfd/twl4030-irq.c", i32 287, i32 3}
!101 = !{ptr @.str.54, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @handle_twl4030_pih._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @handle_twl4030_pih._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @sih_modules_twl5031, !105, !"sih_modules_twl5031", i1 false, i1 false}
!105 = !{!"../drivers/mfd/twl4030-irq.c", i32 168, i32 25}
!106 = !{ptr @sih_modules_twl4030, !107, !"sih_modules_twl4030", i1 false, i1 false}
!107 = !{!"../drivers/mfd/twl4030-irq.c", i32 108, i32 25}
!108 = !{i32 1, !"wchar_size", i32 2}
!109 = !{i32 1, !"min_enum_size", i32 4}
!110 = !{i32 8, !"branch-target-enforcement", i32 0}
!111 = !{i32 8, !"sign-return-address", i32 0}
!112 = !{i32 8, !"sign-return-address-all", i32 0}
!113 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!114 = !{i32 7, !"uwtable", i32 1}
!115 = !{i32 7, !"frame-pointer", i32 2}
!116 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!117 = !{i8 0, i8 2}
!118 = !{i32 0, i32 33}
!119 = !{!"auto-init"}
!120 = !{i8 0, i8 9}
