; ModuleID = '/llk/IR_all_yes/drivers/tty/nozomi.c_pt.bc'
source_filename = "../drivers/tty/nozomi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.68 }
%union.anon.68 = type { ptr }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.tty_port_operations = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.tty_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tty_driver = type { i32, %struct.kref, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, %struct.ktermios, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.74, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.74 = type { ptr }
%struct.nozomi = type { ptr, i32, ptr, ptr, ptr, i16, i32, %struct.config_table, ptr, [5 x %struct.port], ptr, %struct.spinlock, i32, i32, i32 }
%struct.config_table = type <{ i32, i16, i16, [3 x i8], %struct.toggles, [4 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [16 x i8], i16, i16, i16, i16, i16, i16, i16 }>
%struct.toggles = type { i8 }
%struct.port = type { %struct.tty_port, i8, %struct.ctrl_ul, %struct.ctrl_dl, %struct.kfifo, [2 x ptr], [2 x i32], i8, [2 x ptr], [2 x i32], i8, i16, %struct.wait_queue_head, %struct.async_icount, ptr }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.37, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.37 = type { ptr }
%struct.llist_head = type { ptr }
%struct.ctrl_ul = type { i8, i8 }
%struct.ctrl_dl = type { i8, i8 }
%struct.kfifo = type { %union.anon.75, [0 x i8] }
%union.anon.75 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.async_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.38, %struct.anon.39, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.38 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.39 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.serial_icounter_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [9 x i32] }

@__param_str_debug = internal constant [13 x i8] c"nozomi.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.68 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype236 = internal constant [26 x i8] c"nozomi.parmtype=debug:int\00", section ".modinfo", align 1
@nozomi_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @nozomi_pci_tbl, ptr @nozomi_card_init, ptr @nozomi_card_exit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@ntty_driver = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_nozomi__282_1871_nozomi_init6 = internal global ptr @nozomi_init, section ".initcall6.init", align 4
@__exitcall_nozomi_exit = internal global ptr @nozomi_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file283 = internal constant [31 x i8] c"nozomi.file=drivers/tty/nozomi\00", section ".modinfo", align 1
@__UNIQUE_ID_license284 = internal constant [28 x i8] c"nozomi.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description285 = internal constant [33 x i8] c"nozomi.description=Nozomi driver\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"nozomi\00", [25 x i8] zeroinitializer }, align 32
@nozomi_pci_tbl = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 6449, i32 12, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@ndevs = internal global { [64 x ptr], [64 x i8] } zeroinitializer, align 32
@nozomi_card_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1315, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"no free tty range for this card left\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nozomi_card_init\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"drivers/tty/nozomi.c\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nozomi_card_init._entry_ptr = internal global ptr @nozomi_card_init._entry, section ".printk_index", align 4
@nozomi_card_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1322, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Could not allocate memory\0A\00", [37 x i8] zeroinitializer }, align 32
@nozomi_card_init._entry_ptr.8 = internal global ptr @nozomi_card_init._entry.6, section ".printk_index", align 4
@nozomi_card_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 1331, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to enable PCI Device\0A\00", [35 x i8] zeroinitializer }, align 32
@nozomi_card_init._entry_ptr.11 = internal global ptr @nozomi_card_init._entry.9, section ".printk_index", align 4
@nozomi_card_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 1338, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"I/O address 0x%04x already in use\0A\00", [61 x i8] zeroinitializer }, align 32
@nozomi_card_init._entry_ptr.14 = internal global ptr @nozomi_card_init._entry.12, section ".printk_index", align 4
@nozomi_card_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 1347, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unable to map card MMIO\0A\00", [39 x i8] zeroinitializer }, align 32
@nozomi_card_init._entry_ptr.17 = internal global ptr @nozomi_card_init._entry.15, section ".printk_index", align 4
@nozomi_card_init._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 1354, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Could not allocate send buffer?\0A\00", [63 x i8] zeroinitializer }, align 32
@nozomi_card_init._entry_ptr.20 = internal global ptr @nozomi_card_init._entry.18, section ".printk_index", align 4
@nozomi_card_init._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 1363, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Could not allocate kfifo buffer\0A\00", [63 x i8] zeroinitializer }, align 32
@nozomi_card_init._entry_ptr.23 = internal global ptr @nozomi_card_init._entry.21, section ".printk_index", align 4
@nozomi_card_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&dc->spin_mutex\00", [16 x i8] zeroinitializer }, align 32
@nozomi_card_init._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.2, ptr @.str.3, i32 1380, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"can't request irq %d\0A\00", [42 x i8] zeroinitializer }, align 32
@nozomi_card_init._entry_ptr.27 = internal global ptr @nozomi_card_init._entry.25, section ".printk_index", align 4
@nozomi_card_init.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.28, i8 1, i8 90, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"[%d] %s(): base_addr: %p\0A\00", [38 x i8] zeroinitializer }, align 32
@noz_tty_port_ops = internal constant { %struct.tty_port_operations, [44 x i8] } { %struct.tty_port_operations { ptr null, ptr null, ptr @ntty_shutdown, ptr @ntty_activate, ptr null }, [44 x i8] zeroinitializer }, align 32
@nozomi_card_init._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.2, ptr @.str.3, i32 1410, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Could not allocate tty?\0A\00", [39 x i8] zeroinitializer }, align 32
@nozomi_card_init._entry_ptr.31 = internal global ptr @nozomi_card_init._entry.29, section ".printk_index", align 4
@nozomi_get_card_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 1244, ptr @.str.34, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Card type is: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nozomi_get_card_type\00", [43 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@nozomi_get_card_type._entry_ptr = internal global ptr @nozomi_get_card_type._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nozomi_setup_private_data.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&dc->port[i].tty_wait\00", [42 x i8] zeroinitializer }, align 32
@interrupt_handler.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.3, ptr @.str.37, i8 1, i8 27, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"interrupt_handler\00", [46 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"[%d] %s(): %s irq:0x%04X, prev:0x%04X\0A\00", [57 x i8] zeroinitializer }, align 32
@interrupt_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.3, i32 1141, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Could not read status from card, we should disable interface\0A\00", [34 x i8] zeroinitializer }, align 32
@interrupt_handler._entry_ptr = internal global ptr @interrupt_handler._entry, section ".printk_index", align 4
@interrupt_handler.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.3, ptr @.str.39, i8 1, i8 31, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"[%d] %s(): CTRL_UL\0A\00", [44 x i8] zeroinitializer }, align 32
@interrupt_handler._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.36, ptr @.str.3, i32 1166, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MDM_DL out of sync!\0A\00", [43 x i8] zeroinitializer }, align 32
@interrupt_handler._entry_ptr.42 = internal global ptr @interrupt_handler._entry.40, section ".printk_index", align 4
@interrupt_handler._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.36, ptr @.str.3, i32 1172, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MDM_UL out of sync!\0A\00", [43 x i8] zeroinitializer }, align 32
@interrupt_handler._entry_ptr.45 = internal global ptr @interrupt_handler._entry.43, section ".printk_index", align 4
@interrupt_handler._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.36, ptr @.str.3, i32 1180, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DIAG_DL out of sync!\0A\00", [42 x i8] zeroinitializer }, align 32
@interrupt_handler._entry_ptr.48 = internal global ptr @interrupt_handler._entry.46, section ".printk_index", align 4
@interrupt2str.buf = internal global { [256 x i8], [64 x i8] } zeroinitializer, align 32
@.str.49 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MDM_DL1 \00", [23 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MDM_DL2 \00", [23 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MDM_UL1 \00", [23 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MDM_UL2 \00", [23 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DIAG_DL1 \00", [22 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DIAG_DL2 \00", [22 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DIAG_UL \00", [23 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"APP1_DL \00", [23 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"APP2_DL \00", [23 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"APP1_UL \00", [23 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"APP2_UL \00", [23 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CTRL_DL \00", [23 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CTRL_UL \00", [23 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"RESET \00", [25 x i8] zeroinitializer }, align 32
@nozomi_read_config_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.3, i32 618, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ConfigTable Bad! 0x%08X != 0x%08X\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nozomi_read_config_table\00", [39 x i8] zeroinitializer }, align 32
@nozomi_read_config_table._entry_ptr = internal global ptr @nozomi_read_config_table._entry, section ".printk_index", align 4
@nozomi_read_config_table.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.64, ptr @.str.3, ptr @.str.65, i8 0, i8 -100, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"[%d] %s(): Second phase, configuring card\0A\00", [53 x i8] zeroinitializer }, align 32
@nozomi_read_config_table.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.64, ptr @.str.3, ptr @.str.66, i8 0, i8 -98, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"[%d] %s(): toggle ports: MDM UL:%d MDM DL:%d, DIAG DL:%d\0A\00", [38 x i8] zeroinitializer }, align 32
@nozomi_read_config_table._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.64, ptr @.str.3, i32 648, ptr @.str.34, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Initialization OK!\0A\00", [44 x i8] zeroinitializer }, align 32
@nozomi_read_config_table._entry_ptr.69 = internal global ptr @nozomi_read_config_table._entry.67, section ".printk_index", align 4
@nozomi_read_config_table.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.64, ptr @.str.3, ptr @.str.70, i8 0, i8 -93, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"[%d] %s(): First phase: pushing upload buffers, clearing download\0A\00", [61 x i8] zeroinitializer }, align 32
@nozomi_read_config_table._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.64, ptr @.str.3, i32 658, ptr @.str.34, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Version of card: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@nozomi_read_config_table._entry_ptr.73 = internal global ptr @nozomi_read_config_table._entry.71, section ".printk_index", align 4
@nozomi_read_config_table.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.64, ptr @.str.3, ptr @.str.74, i8 0, i8 -87, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[%d] %s(): First phase done\0A\00", [35 x i8] zeroinitializer }, align 32
@dump_table.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.3, ptr @.str.76, i8 0, i8 -115, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dump_table\00", [21 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[%d] %s(): signature: 0x%08X\0A\00", [34 x i8] zeroinitializer }, align 32
@dump_table.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.3, ptr @.str.77, i8 0, i8 -115, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[%d] %s(): version: 0x%04X\0A\00", [36 x i8] zeroinitializer }, align 32
@dump_table.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.3, ptr @.str.78, i8 0, i8 -115, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"[%d] %s(): product_information: 0x%04X\0A\00", [56 x i8] zeroinitializer }, align 32
@dump_table.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.3, ptr @.str.79, i8 0, i8 -114, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"[%d] %s(): toggle enabled: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@dump_table.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.3, ptr @.str.80, i8 0, i8 -114, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[%d] %s(): toggle up_mdm: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@dump_table.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.3, ptr @.str.81, i8 0, i8 -114, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[%d] %s(): toggle dl_mdm: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@dump_table.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.3, ptr @.str.82, i8 0, i8 -114, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[%d] %s(): toggle dl_dbg: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@dump_table.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.3, ptr @.str.83, i8 0, i8 -113, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[%d] %s(): dl_start: 0x%04X\0A\00", [35 x i8] zeroinitializer }, align 32
@dump_table.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.3, ptr @.str.84, i8 0, i8 -113, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"[%d] %s(): dl_mdm_len0: 0x%04X, %d\0A\00", [60 x i8] zeroinitializer }, align 32
@dump_table.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.3, ptr @.str.85, i8 0, i8 -112, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"[%d] %s(): dl_mdm_len1: 0x%04X, %d\0A\00", [60 x i8] zeroinitializer }, align 32
@dump_table.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.3, ptr @.str.86, i8 0, i8 -112, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"[%d] %s(): dl_diag_len0: 0x%04X, %d\0A\00", [59 x i8] zeroinitializer }, align 32
@dump_table.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.3, ptr @.str.87, i8 0, i8 -111, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"[%d] %s(): dl_diag_len1: 0x%04X, %d\0A\00", [59 x i8] zeroinitializer }, align 32
@dump_table.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.3, ptr @.str.88, i8 0, i8 -111, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"[%d] %s(): dl_app1_len: 0x%04X, %d\0A\00", [60 x i8] zeroinitializer }, align 32
@dump_table.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.3, ptr @.str.89, i8 0, i8 -110, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"[%d] %s(): dl_app2_len: 0x%04X, %d\0A\00", [60 x i8] zeroinitializer }, align 32
@dump_table.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.3, ptr @.str.90, i8 0, i8 -110, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"[%d] %s(): dl_ctrl_len: 0x%04X, %d\0A\00", [60 x i8] zeroinitializer }, align 32
@dump_table.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.3, ptr @.str.91, i8 0, i8 -109, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[%d] %s(): ul_start: 0x%04X, %d\0A\00", [63 x i8] zeroinitializer }, align 32
@dump_table.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.3, ptr @.str.92, i8 0, i8 -109, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"[%d] %s(): ul_mdm_len[0]: 0x%04X, %d\0A\00", [58 x i8] zeroinitializer }, align 32
@dump_table.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.3, ptr @.str.93, i8 0, i8 -108, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"[%d] %s(): ul_mdm_len[1]: 0x%04X, %d\0A\00", [58 x i8] zeroinitializer }, align 32
@dump_table.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.3, ptr @.str.94, i8 0, i8 -108, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"[%d] %s(): ul_diag_len: 0x%04X, %d\0A\00", [60 x i8] zeroinitializer }, align 32
@dump_table.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.3, ptr @.str.95, i8 0, i8 -107, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"[%d] %s(): ul_app1_len: 0x%04X, %d\0A\00", [60 x i8] zeroinitializer }, align 32
@dump_table.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.3, ptr @.str.96, i8 0, i8 -107, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"[%d] %s(): ul_app2_len: 0x%04X, %d\0A\00", [60 x i8] zeroinitializer }, align 32
@dump_table.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.3, ptr @.str.97, i8 0, i8 -106, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"[%d] %s(): ul_ctrl_len: 0x%04X, %d\0A\00", [60 x i8] zeroinitializer }, align 32
@port2ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.3, i32 978, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"ERROR: send flow control received for non-existing port\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"port2ctrl\00", [22 x i8] zeroinitializer }, align 32
@port2ctrl._entry_ptr = internal global ptr @port2ctrl._entry, section ".printk_index", align 4
@receive_flow_control.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.100, ptr @.str.3, ptr @.str.101, i8 0, i8 -36, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.100 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"receive_flow_control\00", [43 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [144 x i8], [48 x i8] } { [144 x i8] c"[%d] %s(): The Base Band sends this value as a response to a request for IMSI detach sent over the control channel uplink (see section 7.6.1).\0A\00", [48 x i8] zeroinitializer }, align 32
@receive_flow_control._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.100, ptr @.str.3, i32 906, ptr @.str.34, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Device READY!\0A\00", [17 x i8] zeroinitializer }, align 32
@receive_flow_control._entry_ptr = internal global ptr @receive_flow_control._entry, section ".printk_index", align 4
@receive_flow_control._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.100, ptr @.str.3, i32 911, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"ERROR: flow control received for non-existing port\0A\00", [44 x i8] zeroinitializer }, align 32
@receive_flow_control._entry_ptr.105 = internal global ptr @receive_flow_control._entry.103, section ".printk_index", align 4
@receive_flow_control.__UNIQUE_ID_ddebug266 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.100, ptr @.str.3, ptr @.str.106, i8 0, i8 -27, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.106 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"[%d] %s(): 0x%04X->0x%04X\0A\00", [37 x i8] zeroinitializer }, align 32
@receive_flow_control.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.100, ptr @.str.3, ptr @.str.107, i8 0, i8 -26, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.107 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"[%d] %s(): Disable interrupt (0x%04X) on port: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@receive_flow_control.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.100, ptr @.str.3, ptr @.str.108, i8 0, i8 -24, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.108 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"[%d] %s(): Enable interrupt (0x%04X) on port: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@receive_flow_control.__UNIQUE_ID_ddebug269 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.100, ptr @.str.3, ptr @.str.109, i8 0, i8 -23, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.109 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"[%d] %s(): Data in buffer [%d], enable transmit! \0A\00", [45 x i8] zeroinitializer }, align 32
@receive_flow_control.__UNIQUE_ID_ddebug270 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.100, ptr @.str.3, ptr @.str.110, i8 0, i8 -23, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.110 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[%d] %s(): No data in buffer...\0A\00", [63 x i8] zeroinitializer }, align 32
@receive_flow_control.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.100, ptr @.str.3, ptr @.str.111, i8 0, i8 -21, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.111 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[%d] %s():  No change in mctrl\0A\00", [32 x i8] zeroinitializer }, align 32
@receive_flow_control.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.100, ptr @.str.3, ptr @.str.112, i8 0, i8 -17, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.112 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"[%d] %s(): port: %d DCD(%d), CTS(%d), RI(%d), DSR(%d)\0A\00", [41 x i8] zeroinitializer }, align 32
@disable_transmit_ul.mask = internal constant { [5 x i16], [22 x i8] } { [5 x i16] [i16 -11, i16 -65, i16 -257, i16 -1025, i16 -4097], [22 x i8] zeroinitializer }, align 32
@disable_transmit_ul._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.114, ptr @.str.3, i32 705, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Called with wrong port?\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"disable_transmit_ul\00", [44 x i8] zeroinitializer }, align 32
@disable_transmit_ul._entry_ptr = internal global ptr @disable_transmit_ul._entry, section ".printk_index", align 4
@enable_transmit_ul.mask = internal constant { [5 x i16], [22 x i8] } { [5 x i16] [i16 10, i16 64, i16 256, i16 1024, i16 4096], [22 x i8] zeroinitializer }, align 32
@enable_transmit_ul._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.115, ptr @.str.3, i32 691, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"enable_transmit_ul\00", [45 x i8] zeroinitializer }, align 32
@enable_transmit_ul._entry_ptr = internal global ptr @enable_transmit_ul._entry, section ".printk_index", align 4
@handle_data_dl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.117, ptr @.str.3, i32 1044, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"port out of sync!, toggle:%d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"handle_data_dl\00", [17 x i8] zeroinitializer }, align 32
@handle_data_dl._entry_ptr = internal global ptr @handle_data_dl._entry, section ".printk_index", align 4
@handle_data_ul._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.119, ptr @.str.3, i32 1102, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"port out of sync!\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"handle_data_ul\00", [17 x i8] zeroinitializer }, align 32
@handle_data_ul._entry_ptr = internal global ptr @handle_data_ul._entry, section ".printk_index", align 4
@send_data.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.120, ptr @.str.3, ptr @.str.121, i8 0, i8 -68, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.120 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"send_data\00", [22 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"[%d] %s(): No more data to send, disable link:\0A\00", [48 x i8] zeroinitializer }, align 32
@receive_data.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.122, ptr @.str.3, ptr @.str.123, i8 0, i8 -61, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.122 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"receive_data\00", [19 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"[%d] %s(): No room in tty, don't read data, don't ack interrupt, disable interrupt\0A\00", [44 x i8] zeroinitializer }, align 32
@receive_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.122, ptr @.str.3, i32 792, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"size == 0?\0A\00", [20 x i8] zeroinitializer }, align 32
@receive_data._entry_ptr = internal global ptr @receive_data._entry, section ".printk_index", align 4
@disable_transmit_dl.mask = internal constant { [5 x i16], [22 x i8] } { [5 x i16] [i16 -6, i16 -49, i16 -129, i16 -513, i16 -2049], [22 x i8] zeroinitializer }, align 32
@disable_transmit_dl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.125, ptr @.str.3, i32 732, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"disable_transmit_dl\00", [44 x i8] zeroinitializer }, align 32
@disable_transmit_dl._entry_ptr = internal global ptr @disable_transmit_dl._entry, section ".printk_index", align 4
@dev_attr_card_type = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.131, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @card_type_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@make_sysfs_files._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.127, ptr @.str.3, i32 1289, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Could not create sysfs file for card_type\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"make_sysfs_files\00", [47 x i8] zeroinitializer }, align 32
@make_sysfs_files._entry_ptr = internal global ptr @make_sysfs_files._entry, section ".printk_index", align 4
@dev_attr_open_ttys = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.133, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @open_ttys_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@make_sysfs_files._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.127, ptr @.str.3, i32 1292, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Could not create sysfs file for open_ttys\0A\00", [53 x i8] zeroinitializer }, align 32
@make_sysfs_files._entry_ptr.130 = internal global ptr @make_sysfs_files._entry.128, section ".printk_index", align 4
@.str.131 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"card_type\00", [22 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"open_ttys\00", [22 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@ntty_shutdown.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.135, ptr @.str.3, ptr @.str.136, i8 1, i8 -118, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.135 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ntty_shutdown\00", [18 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"[%d] %s(): close: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@ntty_shutdown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.135, ptr @.str.3, i32 1582, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"noz: shutdown %p\0A\00", [46 x i8] zeroinitializer }, align 32
@ntty_shutdown._entry_ptr = internal global ptr @ntty_shutdown._entry, section ".printk_index", align 4
@ntty_activate.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.138, ptr @.str.3, ptr @.str.139, i8 1, i8 -124, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.138 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ntty_activate\00", [18 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"[%d] %s(): open: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@ntty_activate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.138, ptr @.str.3, i32 1560, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"noz: activated %d: %p\0A\00", [41 x i8] zeroinitializer }, align 32
@ntty_activate._entry_ptr = internal global ptr @ntty_activate._entry, section ".printk_index", align 4
@nozomi_card_exit.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.141, ptr @.str.3, ptr @.str.142, i8 1, i8 113, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.141 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nozomi_card_exit\00", [47 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"[%d] %s(): sending flow control 0x%04X\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nozomi_tty\00", [21 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"noz\00", [28 x i8] zeroinitializer }, align 32
@tty_std_termios = external dso_local local_unnamed_addr global %struct.ktermios, align 4
@tty_ops = internal constant { %struct.tty_operations, [48 x i8] } { %struct.tty_operations { ptr null, ptr @ntty_install, ptr null, ptr @ntty_open, ptr @ntty_close, ptr null, ptr @ntty_cleanup, ptr @ntty_write, ptr null, ptr null, ptr @ntty_write_room, ptr @ntty_chars_in_buffer, ptr @ntty_ioctl, ptr null, ptr null, ptr @ntty_throttle, ptr @ntty_unthrottle, ptr null, ptr null, ptr @ntty_hangup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ntty_tiocmget, ptr @ntty_tiocmset, ptr null, ptr @ntty_tiocgicount, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@nozomi_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.146, ptr @.str.3, i32 1846, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013Nozomi: failed to register ntty driver\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nozomi_init\00", [20 x i8] zeroinitializer }, align 32
@nozomi_init._entry_ptr = internal global ptr @nozomi_init._entry, section ".printk_index", align 4
@nozomi_init._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.146, ptr @.str.3, i32 1852, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013Nozomi: can't register pci driver\0A\00", [59 x i8] zeroinitializer }, align 32
@nozomi_init._entry_ptr.149 = internal global ptr @nozomi_init._entry.147, section ".printk_index", align 4
@ntty_write.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.150, ptr @.str.3, ptr @.str.151, i8 1, i8 -108, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.150 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ntty_write\00", [21 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[%d] %s(): Enable interrupt\0A\00", [35 x i8] zeroinitializer }, align 32
@ntty_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.150, ptr @.str.3, i32 1623, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"CTS not active on modem port?\0A\00", [33 x i8] zeroinitializer }, align 32
@ntty_write._entry_ptr = internal global ptr @ntty_write._entry, section ".printk_index", align 4
@ntty_ioctl.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.153, ptr @.str.3, ptr @.str.154, i8 1, i8 -76, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.153 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ntty_ioctl\00", [21 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[%d] %s(): ERR: 0x%08X, %d\0A\00", [36 x i8] zeroinitializer }, align 32
@enable_transmit_dl.mask = internal constant { [5 x i16], [22 x i8] } { [5 x i16] [i16 5, i16 48, i16 128, i16 512, i16 2048], [22 x i8] zeroinitializer }, align 32
@enable_transmit_dl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.155, ptr @.str.3, i32 718, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"enable_transmit_dl\00", [45 x i8] zeroinitializer }, align 32
@enable_transmit_dl._entry_ptr = internal global ptr @enable_transmit_dl._entry, section ".printk_index", align 4
@set_dtr.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.156, ptr @.str.3, ptr @.str.157, i8 1, i8 123, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.156 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"set_dtr\00", [24 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"[%d] %s(): SETTING DTR index: %d, dtr: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.158 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.159 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@___asan_gen_.160 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 52, i32 12 }
@___asan_gen_.163 = private unnamed_addr constant [14 x i8] c"nozomi_driver\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 1816, i32 26 }
@___asan_gen_.166 = private unnamed_addr constant [12 x i8] c"ntty_driver\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 367, i32 27 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 1817, i32 10 }
@___asan_gen_.172 = private unnamed_addr constant [15 x i8] c"nozomi_pci_tbl\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 359, i32 35 }
@___asan_gen_.175 = private unnamed_addr constant [6 x i8] c"ndevs\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 366, i32 23 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 1315, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 1322, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 1331, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 1337, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 1347, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 1354, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 1362, i32 4 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 1369, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 1380, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 1384, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant [17 x i8] c"noz_tty_port_ops\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 1793, i32 41 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 1410, i32 4 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 1244, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 1264, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 1133, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 1140, i32 4 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 1149, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 1166, i32 4 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 1172, i32 4 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 1180, i32 4 }
@___asan_gen_.307 = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 825, i32 14 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 829, i32 34 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 831, i32 46 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 833, i32 46 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 835, i32 46 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 837, i32 46 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 839, i32 46 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 842, i32 46 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 845, i32 46 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 847, i32 46 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 850, i32 46 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 852, i32 46 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 855, i32 46 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 857, i32 46 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 860, i32 46 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 617, i32 3 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 625, i32 3 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 632, i32 3 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 648, i32 3 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 655, i32 3 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 657, i32 3 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 676, i32 3 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 564, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 565, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 566, i32 2 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 568, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 569, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 570, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 571, i32 2 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 573, i32 2 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 574, i32 2 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 576, i32 2 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 578, i32 2 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 580, i32 2 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 582, i32 2 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 584, i32 2 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 586, i32 2 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 588, i32 2 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 590, i32 2 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 592, i32 2 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 594, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 596, i32 2 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 598, i32 2 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 600, i32 2 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 976, i32 3 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 881, i32 3 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 906, i32 4 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 910, i32 3 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 915, i32 2 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 922, i32 3 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 929, i32 4 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 931, i32 4 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 935, i32 4 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 940, i32 3 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 955, i32 2 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 698, i32 19 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 705, i32 3 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 685, i32 19 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 691, i32 3 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 1043, i32 3 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 1102, i32 3 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 753, i32 3 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 782, i32 3 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 792, i32 3 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 725, i32 19 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 732, i32 3 }
@___asan_gen_.568 = private unnamed_addr constant [19 x i8] c"dev_attr_card_type\00", align 1
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 1288, i32 3 }
@___asan_gen_.580 = private unnamed_addr constant [19 x i8] c"dev_attr_open_ttys\00", align 1
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 1291, i32 3 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 1274, i32 8 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 1272, i32 22 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 1283, i32 8 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 1281, i32 22 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 1576, i32 2 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 1582, i32 2 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 1554, i32 2 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 1560, i32 2 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 1478, i32 2 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 1832, i32 29 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 1833, i32 22 }
@___asan_gen_.637 = private unnamed_addr constant [8 x i8] c"tty_ops\00", align 1
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 1798, i32 36 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 1846, i32 3 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 1852, i32 3 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 1619, i32 4 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 1622, i32 4 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 1744, i32 3 }
@___asan_gen_.673 = private unnamed_addr constant [5 x i8] c"mask\00", align 1
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 712, i32 19 }
@___asan_gen_.676 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 718, i32 3 }
@___asan_gen_.685 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.686 = private constant [24 x i8] c"../drivers/tty/nozomi.c\00", align 1
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.686, i32 1517, i32 2 }
@llvm.compiler.used = appending global [218 x ptr] [ptr @__UNIQUE_ID_debugtype236, ptr @__UNIQUE_ID_description285, ptr @__UNIQUE_ID_file283, ptr @__UNIQUE_ID_license284, ptr @__exitcall_nozomi_exit, ptr @__initcall__kmod_nozomi__282_1871_nozomi_init6, ptr @__param_debug, ptr @disable_transmit_dl._entry, ptr @disable_transmit_dl._entry_ptr, ptr @disable_transmit_ul._entry, ptr @disable_transmit_ul._entry_ptr, ptr @enable_transmit_dl._entry, ptr @enable_transmit_dl._entry_ptr, ptr @enable_transmit_ul._entry, ptr @enable_transmit_ul._entry_ptr, ptr @handle_data_dl._entry, ptr @handle_data_dl._entry_ptr, ptr @handle_data_ul._entry, ptr @handle_data_ul._entry_ptr, ptr @interrupt_handler._entry, ptr @interrupt_handler._entry.40, ptr @interrupt_handler._entry.43, ptr @interrupt_handler._entry.46, ptr @interrupt_handler._entry_ptr, ptr @interrupt_handler._entry_ptr.42, ptr @interrupt_handler._entry_ptr.45, ptr @interrupt_handler._entry_ptr.48, ptr @make_sysfs_files._entry, ptr @make_sysfs_files._entry.128, ptr @make_sysfs_files._entry_ptr, ptr @make_sysfs_files._entry_ptr.130, ptr @nozomi_card_init._entry, ptr @nozomi_card_init._entry.12, ptr @nozomi_card_init._entry.15, ptr @nozomi_card_init._entry.18, ptr @nozomi_card_init._entry.21, ptr @nozomi_card_init._entry.25, ptr @nozomi_card_init._entry.29, ptr @nozomi_card_init._entry.6, ptr @nozomi_card_init._entry.9, ptr @nozomi_card_init._entry_ptr, ptr @nozomi_card_init._entry_ptr.11, ptr @nozomi_card_init._entry_ptr.14, ptr @nozomi_card_init._entry_ptr.17, ptr @nozomi_card_init._entry_ptr.20, ptr @nozomi_card_init._entry_ptr.23, ptr @nozomi_card_init._entry_ptr.27, ptr @nozomi_card_init._entry_ptr.31, ptr @nozomi_card_init._entry_ptr.8, ptr @nozomi_exit, ptr @nozomi_get_card_type._entry, ptr @nozomi_get_card_type._entry_ptr, ptr @nozomi_init._entry, ptr @nozomi_init._entry.147, ptr @nozomi_init._entry_ptr, ptr @nozomi_init._entry_ptr.149, ptr @nozomi_read_config_table._entry, ptr @nozomi_read_config_table._entry.67, ptr @nozomi_read_config_table._entry.71, ptr @nozomi_read_config_table._entry_ptr, ptr @nozomi_read_config_table._entry_ptr.69, ptr @nozomi_read_config_table._entry_ptr.73, ptr @ntty_activate._entry, ptr @ntty_activate._entry_ptr, ptr @ntty_shutdown._entry, ptr @ntty_shutdown._entry_ptr, ptr @ntty_write._entry, ptr @ntty_write._entry_ptr, ptr @port2ctrl._entry, ptr @port2ctrl._entry_ptr, ptr @receive_data._entry, ptr @receive_data._entry_ptr, ptr @receive_flow_control._entry, ptr @receive_flow_control._entry.103, ptr @receive_flow_control._entry_ptr, ptr @receive_flow_control._entry_ptr.105, ptr @debug, ptr @nozomi_driver, ptr @ntty_driver, ptr @.str, ptr @nozomi_pci_tbl, ptr @ndevs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @nozomi_card_init.__key, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @noz_tty_port_ops, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @nozomi_setup_private_data.__key, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @interrupt2str.buf, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.68, ptr @.str.70, ptr @.str.72, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.104, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @disable_transmit_ul.mask, ptr @.str.113, ptr @.str.114, ptr @enable_transmit_ul.mask, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @disable_transmit_dl.mask, ptr @.str.125, ptr @dev_attr_card_type, ptr @.str.126, ptr @.str.127, ptr @dev_attr_open_ttys, ptr @.str.129, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @tty_ops, ptr @.str.145, ptr @.str.146, ptr @.str.148, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @enable_transmit_dl.mask, ptr @.str.155, ptr @.str.156, ptr @.str.157], section "llvm.metadata"
@0 = internal global [176 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nozomi_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntty_driver to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nozomi_pci_tbl to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ndevs to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nozomi_card_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nozomi_card_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nozomi_card_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nozomi_card_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nozomi_card_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nozomi_card_init._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nozomi_card_init._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nozomi_card_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nozomi_card_init._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @noz_tty_port_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nozomi_card_init._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nozomi_get_card_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nozomi_setup_private_data.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @interrupt_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @interrupt_handler._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @interrupt_handler._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @interrupt_handler._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @interrupt2str.buf to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nozomi_read_config_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nozomi_read_config_table._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nozomi_read_config_table._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port2ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @receive_flow_control._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @receive_flow_control._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disable_transmit_ul.mask to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disable_transmit_ul._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_transmit_ul.mask to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_transmit_ul._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_data_dl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_data_ul._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @receive_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disable_transmit_dl.mask to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disable_transmit_dl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_card_type to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @make_sysfs_files._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_open_ttys to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @make_sysfs_files._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntty_shutdown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntty_activate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tty_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nozomi_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nozomi_init._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntty_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_transmit_dl.mask to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_transmit_dl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nozomi_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @pci_unregister_driver(ptr noundef nonnull @nozomi_driver) #12
  %0 = load ptr, ptr @ntty_driver, align 4
  tail call void @tty_unregister_driver(ptr noundef %0) #12
  %1 = load ptr, ptr @ntty_driver, align 4
  tail call void @tty_driver_kref_put(ptr noundef %1) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_driver_kref_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nozomi_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__tty_alloc_driver(i32 noundef 256, ptr noundef null, i32 noundef 12) #12
  store ptr %call, ptr @ntty_driver, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_name = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 4
  %1 = ptrtoint ptr %driver_name to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @.str.143, ptr %driver_name, align 4
  %name = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 5
  %2 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str.144, ptr %name, align 4
  %major = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 7
  %3 = ptrtoint ptr %major to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %major, align 4
  %type = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 10
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 3, ptr %type, align 4
  %subtype = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 11
  %5 = ptrtoint ptr %subtype to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 1, ptr %subtype, align 2
  %init_termios = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 12
  %6 = call ptr @memcpy(ptr %init_termios, ptr @tty_std_termios, i32 36)
  %c_cflag = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 12, i32 2
  %7 = ptrtoint ptr %c_cflag to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 7346, ptr %c_cflag, align 4
  %c_ispeed = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 12, i32 6
  %8 = ptrtoint ptr %c_ispeed to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 115200, ptr %c_ispeed, align 4
  %c_ospeed = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 12, i32 7
  %9 = ptrtoint ptr %c_ospeed to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 115200, ptr %c_ospeed, align 4
  %ops.i = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 20
  %10 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @tty_ops, ptr %ops.i, align 4
  %call6 = tail call i32 @tty_register_driver(ptr noundef %call) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end9, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.145) #15
  br label %free_tty

if.end9:                                          ; preds = %if.end
  %call10 = tail call i32 @__pci_register_driver(ptr noundef nonnull @nozomi_driver, ptr noundef null, ptr noundef nonnull @.str) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end9.cleanup_crit_edge, label %do.end15

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.148) #15
  %11 = load ptr, ptr @ntty_driver, align 4
  tail call void @tty_unregister_driver(ptr noundef %11) #12
  br label %free_tty

free_tty:                                         ; preds = %do.end15, %do.end
  %ret.0 = phi i32 [ %call6, %do.end ], [ %call10, %do.end15 ]
  %12 = load ptr, ptr @ntty_driver, align 4
  tail call void @tty_driver_kref_put(ptr noundef %12) #12
  br label %cleanup

cleanup:                                          ; preds = %free_tty, %if.end9.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %ret.0, %free_tty ], [ 0, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nozomi_card_init(ptr noundef %pdev, ptr nocapture noundef readnone %ent) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %ndev_idx.0272 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [64 x ptr], ptr @ndevs, i32 0, i32 %ndev_idx.0272
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end3, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %ndev_idx.0272, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %do.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

do.end:                                           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #15
  br label %cleanup171

if.end3:                                          ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 3876) #16
  %tobool4.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool4.not, label %do.end11, label %if.end13, !prof !391

do.end11:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  %dev12 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12, ptr noundef nonnull @.str.7) #15
  br label %err_free

if.end13:                                         ; preds = %if.end3
  %pdev14 = getelementptr inbounds %struct.nozomi, ptr %call7.i.i, i32 0, i32 8
  %3 = ptrtoint ptr %pdev14 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %pdev, ptr %pdev14, align 4
  %call16 = tail call i32 @pci_enable_device(ptr noundef %pdev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end23, label %do.end21

do.end21:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %dev22 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev22, ptr noundef nonnull @.str.10) #15
  br label %err_free

if.end23:                                         ; preds = %if.end13
  %4 = ptrtoint ptr %pdev14 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev14, align 4
  %call25 = tail call i32 @pci_request_regions(ptr noundef %5, ptr noundef nonnull @.str) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end32, label %do.end30

do.end30:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  %dev31 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev31, ptr noundef nonnull @.str.13, i32 noundef 0) #15
  br label %err_disable_device

if.end32:                                         ; preds = %if.end23
  %6 = ptrtoint ptr %pdev14 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev14, align 4
  %end.i = getelementptr %struct.pci_dev, ptr %7, i32 0, i32 47, i32 0, i32 1
  %8 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp1.i = icmp eq i32 %9, 0
  br i1 %cmp1.i, label %if.end32.cond.end.i_crit_edge, label %cond.false.i

if.end32.cond.end.i_crit_edge:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i = getelementptr %struct.pci_dev, ptr %7, i32 0, i32 47, i32 0
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 8
  %sub.i = add i32 %9, 1
  %add.i = sub i32 %sub.i, %11
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.end32.cond.end.i_crit_edge
  %cond.i = phi i32 [ %add.i, %cond.false.i ], [ 0, %if.end32.cond.end.i_crit_edge ]
  %end.1.i = getelementptr %struct.pci_dev, ptr %7, i32 0, i32 47, i32 1, i32 1
  %12 = ptrtoint ptr %end.1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %end.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp1.1.i = icmp eq i32 %13, 0
  br i1 %cmp1.1.i, label %cond.end.i.cond.end.1.i_crit_edge, label %cond.false.1.i

cond.end.i.cond.end.1.i_crit_edge:                ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.1.i

cond.false.1.i:                                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.1.i = getelementptr %struct.pci_dev, ptr %7, i32 0, i32 47, i32 1
  %14 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.1.i, align 8
  %sub.1.i = add i32 %13, 1
  %add.1.i = sub i32 %sub.1.i, %15
  br label %cond.end.1.i

cond.end.1.i:                                     ; preds = %cond.false.1.i, %cond.end.i.cond.end.1.i_crit_edge
  %cond.1.i = phi i32 [ %add.1.i, %cond.false.1.i ], [ 0, %cond.end.i.cond.end.1.i_crit_edge ]
  %end.2.i = getelementptr %struct.pci_dev, ptr %7, i32 0, i32 47, i32 2, i32 1
  %16 = ptrtoint ptr %end.2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %end.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp1.2.i = icmp eq i32 %17, 0
  br i1 %cmp1.2.i, label %cond.end.1.i.cond.end.2.i_crit_edge, label %cond.false.2.i

cond.end.1.i.cond.end.2.i_crit_edge:              ; preds = %cond.end.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.2.i

cond.false.2.i:                                   ; preds = %cond.end.1.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.2.i = getelementptr %struct.pci_dev, ptr %7, i32 0, i32 47, i32 2
  %18 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.2.i, align 8
  %sub.2.i = add i32 %17, 1
  %add.2.i = sub i32 %sub.2.i, %19
  br label %cond.end.2.i

cond.end.2.i:                                     ; preds = %cond.false.2.i, %cond.end.1.i.cond.end.2.i_crit_edge
  %cond.2.i = phi i32 [ %add.2.i, %cond.false.2.i ], [ 0, %cond.end.1.i.cond.end.2.i_crit_edge ]
  %end.3.i = getelementptr %struct.pci_dev, ptr %7, i32 0, i32 47, i32 3, i32 1
  %20 = ptrtoint ptr %end.3.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %end.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp1.3.i = icmp eq i32 %21, 0
  br i1 %cmp1.3.i, label %cond.end.2.i.cond.end.3.i_crit_edge, label %cond.false.3.i

cond.end.2.i.cond.end.3.i_crit_edge:              ; preds = %cond.end.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.3.i

cond.false.3.i:                                   ; preds = %cond.end.2.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.3.i = getelementptr %struct.pci_dev, ptr %7, i32 0, i32 47, i32 3
  %22 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.3.i, align 8
  %sub.3.i = add i32 %21, 1
  %add.3.i = sub i32 %sub.3.i, %23
  br label %cond.end.3.i

cond.end.3.i:                                     ; preds = %cond.false.3.i, %cond.end.2.i.cond.end.3.i_crit_edge
  %cond.3.i = phi i32 [ %add.3.i, %cond.false.3.i ], [ 0, %cond.end.2.i.cond.end.3.i_crit_edge ]
  %end.4.i = getelementptr %struct.pci_dev, ptr %7, i32 0, i32 47, i32 4, i32 1
  %24 = ptrtoint ptr %end.4.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %end.4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp1.4.i = icmp eq i32 %25, 0
  br i1 %cmp1.4.i, label %cond.end.3.i.cond.end.4.i_crit_edge, label %cond.false.4.i

cond.end.3.i.cond.end.4.i_crit_edge:              ; preds = %cond.end.3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.4.i

cond.false.4.i:                                   ; preds = %cond.end.3.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.4.i = getelementptr %struct.pci_dev, ptr %7, i32 0, i32 47, i32 4
  %26 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.4.i, align 8
  %sub.4.i = add i32 %25, 1
  %add.4.i = sub i32 %sub.4.i, %27
  br label %cond.end.4.i

cond.end.4.i:                                     ; preds = %cond.false.4.i, %cond.end.3.i.cond.end.4.i_crit_edge
  %cond.4.i = phi i32 [ %add.4.i, %cond.false.4.i ], [ 0, %cond.end.3.i.cond.end.4.i_crit_edge ]
  %end.5.i = getelementptr %struct.pci_dev, ptr %7, i32 0, i32 47, i32 5, i32 1
  %28 = ptrtoint ptr %end.5.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %end.5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp1.5.i = icmp eq i32 %29, 0
  br i1 %cmp1.5.i, label %cond.end.4.i.nozomi_get_card_type.exit_crit_edge, label %cond.false.5.i

cond.end.4.i.nozomi_get_card_type.exit_crit_edge: ; preds = %cond.end.4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nozomi_get_card_type.exit

cond.false.5.i:                                   ; preds = %cond.end.4.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.5.i = getelementptr %struct.pci_dev, ptr %7, i32 0, i32 47, i32 5
  %30 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.5.i, align 8
  %sub.5.i = add i32 %29, 1
  %add.5.i = sub i32 %sub.5.i, %31
  br label %nozomi_get_card_type.exit

nozomi_get_card_type.exit:                        ; preds = %cond.false.5.i, %cond.end.4.i.nozomi_get_card_type.exit_crit_edge
  %cond.5.i = phi i32 [ %add.5.i, %cond.false.5.i ], [ 0, %cond.end.4.i.nozomi_get_card_type.exit_crit_edge ]
  %add9.1.i = add i32 %cond.1.i, %cond.i
  %add9.2.i = add i32 %add9.1.i, %cond.2.i
  %add9.3.i = add i32 %add9.2.i, %cond.3.i
  %add9.4.i = add i32 %add9.3.i, %cond.4.i
  %add9.5.i = add i32 %add9.4.i, %cond.5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %add9.5.i)
  %cmp10.i = icmp eq i32 %add9.5.i, 2048
  %cond11.i = select i1 %cmp10.i, i32 2048, i32 8192
  %card_type.i = getelementptr inbounds %struct.nozomi, ptr %call7.i.i, i32 0, i32 6
  %32 = ptrtoint ptr %card_type.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %cond11.i, ptr %card_type.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.32, i32 noundef %cond11.i) #15
  %33 = ptrtoint ptr %pdev14 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pdev14, align 4
  %35 = ptrtoint ptr %card_type.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %card_type.i, align 8
  %call34 = tail call ptr @pci_iomap(ptr noundef %34, i32 noundef 0, i32 noundef %36) #12
  %37 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call34, ptr %call7.i.i, align 8
  %tobool36.not = icmp eq ptr %call34, null
  br i1 %tobool36.not, label %do.end40, label %if.end42

do.end40:                                         ; preds = %nozomi_get_card_type.exit
  call void @__sanitizer_cov_trace_pc() #14
  %dev41 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev41, ptr noundef nonnull @.str.16) #15
  br label %err_rel_regs

if.end42:                                         ; preds = %nozomi_get_card_type.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %38 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %38, i32 noundef 3264, i32 noundef 1024) #16
  %send_buf = getelementptr inbounds %struct.nozomi, ptr %call7.i.i, i32 0, i32 10
  %39 = ptrtoint ptr %send_buf to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call7.i, ptr %send_buf, align 8
  %tobool45.not = icmp eq ptr %call7.i, null
  br i1 %tobool45.not, label %if.end42.err_free_sbuf.sink.split_crit_edge, label %for.body54.preheader

if.end42.err_free_sbuf.sink.split_crit_edge:      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free_sbuf.sink.split

for.body54.preheader:                             ; preds = %if.end42
  %fifo_ul = getelementptr %struct.nozomi, ptr %call7.i.i, i32 0, i32 9, i32 0, i32 4
  %call56 = tail call i32 @__kfifo_alloc(ptr noundef %fifo_ul, i32 noundef 8192, i32 noundef 1, i32 noundef 3264) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool58.not = icmp eq i32 %call56, 0
  br i1 %tobool58.not, label %for.inc65, label %for.body54.preheader.err_free_sbuf.sink.split_crit_edge

for.body54.preheader.err_free_sbuf.sink.split_crit_edge: ; preds = %for.body54.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free_sbuf.sink.split

for.inc65:                                        ; preds = %for.body54.preheader
  %fifo_ul.1 = getelementptr %struct.nozomi, ptr %call7.i.i, i32 0, i32 9, i32 1, i32 4
  %call56.1 = tail call i32 @__kfifo_alloc(ptr noundef %fifo_ul.1, i32 noundef 8192, i32 noundef 1, i32 noundef 3264) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56.1)
  %tobool58.not.1 = icmp eq i32 %call56.1, 0
  br i1 %tobool58.not.1, label %for.inc65.1, label %for.inc65.err_free_kfifo.thread294_crit_edge

for.inc65.err_free_kfifo.thread294_crit_edge:     ; preds = %for.inc65
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free_kfifo.thread294

for.inc65.1:                                      ; preds = %for.inc65
  %fifo_ul.2 = getelementptr %struct.nozomi, ptr %call7.i.i, i32 0, i32 9, i32 2, i32 4
  %call56.2 = tail call i32 @__kfifo_alloc(ptr noundef %fifo_ul.2, i32 noundef 8192, i32 noundef 1, i32 noundef 3264) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56.2)
  %tobool58.not.2 = icmp eq i32 %call56.2, 0
  br i1 %tobool58.not.2, label %for.inc65.2, label %for.inc65.1.err_free_kfifo.thread294_crit_edge

for.inc65.1.err_free_kfifo.thread294_crit_edge:   ; preds = %for.inc65.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free_kfifo.thread294

for.inc65.2:                                      ; preds = %for.inc65.1
  %fifo_ul.3 = getelementptr %struct.nozomi, ptr %call7.i.i, i32 0, i32 9, i32 3, i32 4
  %call56.3 = tail call i32 @__kfifo_alloc(ptr noundef %fifo_ul.3, i32 noundef 8192, i32 noundef 1, i32 noundef 3264) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56.3)
  %tobool58.not.3 = icmp eq i32 %call56.3, 0
  br i1 %tobool58.not.3, label %for.inc65.3, label %for.inc65.2.err_free_kfifo.thread294_crit_edge

for.inc65.2.err_free_kfifo.thread294_crit_edge:   ; preds = %for.inc65.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free_kfifo.thread294

for.inc65.3:                                      ; preds = %for.inc65.2
  %spin_mutex = getelementptr inbounds %struct.nozomi, ptr %call7.i.i, i32 0, i32 11
  tail call void @__raw_spin_lock_init(ptr noundef %spin_mutex, ptr noundef nonnull @.str.24, ptr noundef nonnull @nozomi_card_init.__key, i16 noundef signext 3) #12
  %40 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %call7.i.i, align 8
  %42 = ptrtoint ptr %card_type.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %card_type.i, align 8
  %div30.i = lshr i32 %43, 1
  %add.ptr.i = getelementptr i8, ptr %41, i32 %div30.i
  %reg_fcr.i = getelementptr inbounds %struct.nozomi, ptr %call7.i.i, i32 0, i32 3
  %44 = ptrtoint ptr %reg_fcr.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %add.ptr.i, ptr %reg_fcr.i, align 4
  %reg_iir.i = getelementptr inbounds %struct.nozomi, ptr %call7.i.i, i32 0, i32 2
  %45 = ptrtoint ptr %reg_iir.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %add.ptr.i, ptr %reg_iir.i, align 8
  %add.ptr3.i = getelementptr i8, ptr %add.ptr.i, i32 4
  %reg_ier.i = getelementptr inbounds %struct.nozomi, ptr %call7.i.i, i32 0, i32 4
  %46 = ptrtoint ptr %reg_ier.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %add.ptr3.i, ptr %reg_ier.i, align 8
  %last_ier.i = getelementptr inbounds %struct.nozomi, ptr %call7.i.i, i32 0, i32 5
  %47 = ptrtoint ptr %last_ier.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 0, ptr %last_ier.i, align 4
  %flip.i = getelementptr inbounds %struct.nozomi, ptr %call7.i.i, i32 0, i32 1
  %48 = ptrtoint ptr %flip.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %flip.i, align 4
  %token_dl.i = getelementptr inbounds %struct.nozomi, ptr %call7.i.i, i32 0, i32 9, i32 0, i32 11
  %49 = ptrtoint ptr %token_dl.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 5, ptr %token_dl.i, align 2
  %token_dl6.i = getelementptr %struct.nozomi, ptr %call7.i.i, i32 0, i32 9, i32 1, i32 11
  %50 = ptrtoint ptr %token_dl6.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 48, ptr %token_dl6.i, align 2
  %token_dl9.i = getelementptr %struct.nozomi, ptr %call7.i.i, i32 0, i32 9, i32 2, i32 11
  %51 = ptrtoint ptr %token_dl9.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 128, ptr %token_dl9.i, align 2
  %token_dl12.i = getelementptr %struct.nozomi, ptr %call7.i.i, i32 0, i32 9, i32 3, i32 11
  %52 = ptrtoint ptr %token_dl12.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 512, ptr %token_dl12.i, align 2
  %tty_wait.i = getelementptr %struct.nozomi, ptr %call7.i.i, i32 0, i32 9, i32 0, i32 12
  tail call void @__init_waitqueue_head(ptr noundef %tty_wait.i, ptr noundef nonnull @.str.35, ptr noundef nonnull @nozomi_setup_private_data.__key) #12
  %tty_wait.1.i = getelementptr %struct.nozomi, ptr %call7.i.i, i32 0, i32 9, i32 1, i32 12
  tail call void @__init_waitqueue_head(ptr noundef %tty_wait.1.i, ptr noundef nonnull @.str.35, ptr noundef nonnull @nozomi_setup_private_data.__key) #12
  %tty_wait.2.i = getelementptr %struct.nozomi, ptr %call7.i.i, i32 0, i32 9, i32 2, i32 12
  tail call void @__init_waitqueue_head(ptr noundef %tty_wait.2.i, ptr noundef nonnull @.str.35, ptr noundef nonnull @nozomi_setup_private_data.__key) #12
  %tty_wait.3.i = getelementptr %struct.nozomi, ptr %call7.i.i, i32 0, i32 9, i32 3, i32 12
  tail call void @__init_waitqueue_head(ptr noundef %tty_wait.3.i, ptr noundef nonnull @.str.35, ptr noundef nonnull @nozomi_setup_private_data.__key) #12
  %53 = ptrtoint ptr %last_ier.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 0, ptr %last_ier.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !392
  tail call void @arm_heavy_mb() #12
  %54 = ptrtoint ptr %last_ier.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %last_ier.i, align 4
  %56 = tail call i16 @llvm.bswap.i16(i16 %55)
  %57 = ptrtoint ptr %reg_ier.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %reg_ier.i, align 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %58, i16 %56) #12, !srcloc !393
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %59 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %60, ptr noundef nonnull @interrupt_handler, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull %call7.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool77.not = icmp eq i32 %call.i, 0
  br i1 %tobool77.not, label %do.body91, label %do.end87, !prof !394

do.end87:                                         ; preds = %for.inc65.3
  call void @__sanitizer_cov_trace_pc() #14
  %dev88 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %61 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev88, ptr noundef nonnull @.str.26, i32 noundef %62) #15
  br label %for.body160

do.body91:                                        ; preds = %for.inc65.3
  %63 = load i32, ptr @debug, align 4
  %and = and i32 %63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool92.not = icmp eq i32 %and, 0
  br i1 %tobool92.not, label %do.body91.do.end113_crit_edge, label %do.body94

do.body91.do.end113_crit_edge:                    ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end113

do.body94:                                        ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nozomi_card_init.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@nozomi_card_init, %do.end113)) #12
          to label %if.then106 [label %do.end113], !srcloc !395

if.then106:                                       ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #14
  %64 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %call7.i.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nozomi_card_init.__UNIQUE_ID_ddebug275, ptr noundef nonnull @.str.28, i32 noundef 1384, ptr noundef nonnull @.str.2, ptr noundef %65) #12
  br label %do.end113

do.end113:                                        ; preds = %if.then106, %do.body94, %do.body91.do.end113_crit_edge
  %66 = ptrtoint ptr %pdev14 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pdev14, align 4
  %dev.i257 = getelementptr inbounds %struct.pci_dev, ptr %67, i32 0, i32 44
  %call.i258 = tail call i32 @device_create_file(ptr noundef %dev.i257, ptr noundef nonnull @dev_attr_card_type) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i258)
  %tobool.not.i = icmp eq i32 %call.i258, 0
  br i1 %tobool.not.i, label %do.end113.if.end.i_crit_edge, label %do.end.i

do.end113.if.end.i_crit_edge:                     ; preds = %do.end113
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

do.end.i:                                         ; preds = %do.end113
  call void @__sanitizer_cov_trace_pc() #14
  %68 = ptrtoint ptr %pdev14 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pdev14, align 4
  %dev2.i = getelementptr inbounds %struct.pci_dev, ptr %69, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.126) #15
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %do.end113.if.end.i_crit_edge
  %70 = ptrtoint ptr %pdev14 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pdev14, align 4
  %dev4.i = getelementptr inbounds %struct.pci_dev, ptr %71, i32 0, i32 44
  %call5.i = tail call i32 @device_create_file(ptr noundef %dev4.i, ptr noundef nonnull @dev_attr_open_ttys) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end.i.make_sysfs_files.exit_crit_edge, label %do.end9.i

if.end.i.make_sysfs_files.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %make_sysfs_files.exit

do.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %72 = ptrtoint ptr %pdev14 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pdev14, align 4
  %dev11.i = getelementptr inbounds %struct.pci_dev, ptr %73, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11.i, ptr noundef nonnull @.str.129) #15
  br label %make_sysfs_files.exit

make_sysfs_files.exit:                            ; preds = %do.end9.i, %if.end.i.make_sysfs_files.exit_crit_edge
  %mul = shl i32 %ndev_idx.0272, 2
  %index_start = getelementptr inbounds %struct.nozomi, ptr %call7.i.i, i32 0, i32 12
  %74 = ptrtoint ptr %index_start to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %mul, ptr %index_start, align 8
  %75 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call7.i.i, ptr %arrayidx, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %76 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %77 = ptrtoint ptr %last_ier.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 -32768, ptr %last_ier.i, align 4
  %78 = ptrtoint ptr %reg_ier.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %reg_ier.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !396
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %79, i16 128) #12, !srcloc !393
  %state = getelementptr inbounds %struct.nozomi, ptr %call7.i.i, i32 0, i32 13
  %80 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 1, ptr %state, align 4
  %dev129 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %arrayidx123 = getelementptr %struct.nozomi, ptr %call7.i.i, i32 0, i32 9, i32 0
  %dc124 = getelementptr %struct.nozomi, ptr %call7.i.i, i32 0, i32 9, i32 0, i32 14
  %81 = ptrtoint ptr %dc124 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call7.i.i, ptr %dc124, align 4
  tail call void @tty_port_init(ptr noundef %arrayidx123) #12
  %ops = getelementptr %struct.nozomi, ptr %call7.i.i, i32 0, i32 9, i32 0, i32 0, i32 3
  %82 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @noz_tty_port_ops, ptr %ops, align 8
  %83 = load ptr, ptr @ntty_driver, align 4
  %84 = ptrtoint ptr %index_start to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %index_start, align 8
  %call130 = tail call ptr @tty_port_register_device(ptr noundef %arrayidx123, ptr noundef %83, i32 noundef %85, ptr noundef %dev129) #12
  %cmp.i = icmp ugt ptr %call130, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %make_sysfs_files.exit.cleanup_crit_edge, label %for.inc141

make_sysfs_files.exit.cleanup_crit_edge:          ; preds = %make_sysfs_files.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.inc141.2.cleanup_crit_edge, %for.inc141.1.cleanup_crit_edge, %for.inc141.cleanup_crit_edge, %make_sysfs_files.exit.cleanup_crit_edge
  %cmp145 = phi i1 [ true, %for.inc141.2.cleanup_crit_edge ], [ true, %for.inc141.1.cleanup_crit_edge ], [ false, %for.inc141.cleanup_crit_edge ], [ false, %make_sysfs_files.exit.cleanup_crit_edge ]
  %cmp145.1 = phi i1 [ true, %for.inc141.2.cleanup_crit_edge ], [ false, %for.inc141.1.cleanup_crit_edge ], [ false, %for.inc141.cleanup_crit_edge ], [ false, %make_sysfs_files.exit.cleanup_crit_edge ]
  %i.1274.lcssa = phi i32 [ 2, %for.inc141.2.cleanup_crit_edge ], [ 1, %for.inc141.1.cleanup_crit_edge ], [ 0, %for.inc141.cleanup_crit_edge ], [ -1, %make_sysfs_files.exit.cleanup_crit_edge ]
  %arrayidx123.lcssa = phi ptr [ %arrayidx123.3, %for.inc141.2.cleanup_crit_edge ], [ %arrayidx123.2, %for.inc141.1.cleanup_crit_edge ], [ %arrayidx123.1, %for.inc141.cleanup_crit_edge ], [ %arrayidx123, %make_sysfs_files.exit.cleanup_crit_edge ]
  %call130.lcssa = phi ptr [ %call130.3, %for.inc141.2.cleanup_crit_edge ], [ %call130.2, %for.inc141.1.cleanup_crit_edge ], [ %call130.1, %for.inc141.cleanup_crit_edge ], [ %call130, %make_sysfs_files.exit.cleanup_crit_edge ]
  %86 = ptrtoint ptr %call130.lcssa to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev129, ptr noundef nonnull @.str.30) #15
  tail call void @tty_port_destroy(ptr noundef %arrayidx123.lcssa) #12
  br i1 %cmp.i, label %cleanup.for.end154_crit_edge, label %for.body146

cleanup.for.end154_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end154

for.inc141:                                       ; preds = %make_sysfs_files.exit
  %arrayidx123.1 = getelementptr %struct.nozomi, ptr %call7.i.i, i32 0, i32 9, i32 1
  %dc124.1 = getelementptr %struct.nozomi, ptr %call7.i.i, i32 0, i32 9, i32 1, i32 14
  %87 = ptrtoint ptr %dc124.1 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call7.i.i, ptr %dc124.1, align 4
  tail call void @tty_port_init(ptr noundef %arrayidx123.1) #12
  %ops.1 = getelementptr %struct.nozomi, ptr %call7.i.i, i32 0, i32 9, i32 1, i32 0, i32 3
  %88 = ptrtoint ptr %ops.1 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @noz_tty_port_ops, ptr %ops.1, align 8
  %89 = load ptr, ptr @ntty_driver, align 4
  %90 = ptrtoint ptr %index_start to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %index_start, align 8
  %add.1 = add i32 %91, 1
  %call130.1 = tail call ptr @tty_port_register_device(ptr noundef %arrayidx123.1, ptr noundef %89, i32 noundef %add.1, ptr noundef %dev129) #12
  %cmp.i.1 = icmp ugt ptr %call130.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1, label %for.inc141.cleanup_crit_edge, label %for.inc141.1

for.inc141.cleanup_crit_edge:                     ; preds = %for.inc141
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc141.1:                                     ; preds = %for.inc141
  %arrayidx123.2 = getelementptr %struct.nozomi, ptr %call7.i.i, i32 0, i32 9, i32 2
  %dc124.2 = getelementptr %struct.nozomi, ptr %call7.i.i, i32 0, i32 9, i32 2, i32 14
  %92 = ptrtoint ptr %dc124.2 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %call7.i.i, ptr %dc124.2, align 4
  tail call void @tty_port_init(ptr noundef %arrayidx123.2) #12
  %ops.2 = getelementptr %struct.nozomi, ptr %call7.i.i, i32 0, i32 9, i32 2, i32 0, i32 3
  %93 = ptrtoint ptr %ops.2 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr @noz_tty_port_ops, ptr %ops.2, align 8
  %94 = load ptr, ptr @ntty_driver, align 4
  %95 = ptrtoint ptr %index_start to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %index_start, align 8
  %add.2 = add i32 %96, 2
  %call130.2 = tail call ptr @tty_port_register_device(ptr noundef %arrayidx123.2, ptr noundef %94, i32 noundef %add.2, ptr noundef %dev129) #12
  %cmp.i.2 = icmp ugt ptr %call130.2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.2, label %for.inc141.1.cleanup_crit_edge, label %for.inc141.2

for.inc141.1.cleanup_crit_edge:                   ; preds = %for.inc141.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc141.2:                                     ; preds = %for.inc141.1
  %arrayidx123.3 = getelementptr %struct.nozomi, ptr %call7.i.i, i32 0, i32 9, i32 3
  %dc124.3 = getelementptr %struct.nozomi, ptr %call7.i.i, i32 0, i32 9, i32 3, i32 14
  %97 = ptrtoint ptr %dc124.3 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %call7.i.i, ptr %dc124.3, align 4
  tail call void @tty_port_init(ptr noundef %arrayidx123.3) #12
  %ops.3 = getelementptr %struct.nozomi, ptr %call7.i.i, i32 0, i32 9, i32 3, i32 0, i32 3
  %98 = ptrtoint ptr %ops.3 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr @noz_tty_port_ops, ptr %ops.3, align 8
  %99 = load ptr, ptr @ntty_driver, align 4
  %100 = ptrtoint ptr %index_start to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %index_start, align 8
  %add.3 = add i32 %101, 3
  %call130.3 = tail call ptr @tty_port_register_device(ptr noundef %arrayidx123.3, ptr noundef %99, i32 noundef %add.3, ptr noundef %dev129) #12
  %cmp.i.3 = icmp ugt ptr %call130.3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.3, label %for.inc141.2.cleanup_crit_edge, label %for.inc141.2.cleanup171_crit_edge

for.inc141.2.cleanup171_crit_edge:                ; preds = %for.inc141.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup171

for.inc141.2.cleanup_crit_edge:                   ; preds = %for.inc141.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body146:                                      ; preds = %cleanup
  %102 = load ptr, ptr @ntty_driver, align 4
  %103 = ptrtoint ptr %index_start to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %index_start, align 8
  %add148 = add i32 %104, %i.1274.lcssa
  tail call void @tty_unregister_device(ptr noundef %102, i32 noundef %add148) #12
  %arrayidx150 = getelementptr %struct.nozomi, ptr %call7.i.i, i32 0, i32 9, i32 %i.1274.lcssa
  tail call void @tty_port_destroy(ptr noundef %arrayidx150) #12
  br i1 %cmp145, label %for.body146.1, label %for.body146.for.end154_crit_edge

for.body146.for.end154_crit_edge:                 ; preds = %for.body146
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end154

for.body146.1:                                    ; preds = %for.body146
  %i.2 = add nsw i32 %i.1274.lcssa, -1
  %105 = load ptr, ptr @ntty_driver, align 4
  %106 = ptrtoint ptr %index_start to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %index_start, align 8
  %add148.1 = add i32 %107, %i.2
  tail call void @tty_unregister_device(ptr noundef %105, i32 noundef %add148.1) #12
  %arrayidx150.1 = getelementptr %struct.nozomi, ptr %call7.i.i, i32 0, i32 9, i32 %i.2
  tail call void @tty_port_destroy(ptr noundef %arrayidx150.1) #12
  br i1 %cmp145.1, label %for.body146.2, label %for.body146.1.for.end154_crit_edge

for.body146.1.for.end154_crit_edge:               ; preds = %for.body146.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end154

for.body146.2:                                    ; preds = %for.body146.1
  call void @__sanitizer_cov_trace_pc() #14
  %i.2.1 = add nsw i32 %i.1274.lcssa, -2
  %108 = load ptr, ptr @ntty_driver, align 4
  %109 = ptrtoint ptr %index_start to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %index_start, align 8
  %add148.2 = add i32 %110, %i.2.1
  tail call void @tty_unregister_device(ptr noundef %108, i32 noundef %add148.2) #12
  %arrayidx150.2 = getelementptr %struct.nozomi, ptr %call7.i.i, i32 0, i32 9, i32 %i.2.1
  tail call void @tty_port_destroy(ptr noundef %arrayidx150.2) #12
  br label %for.end154

for.end154:                                       ; preds = %for.body146.2, %for.body146.1.for.end154_crit_edge, %for.body146.for.end154_crit_edge, %cleanup.for.end154_crit_edge
  %111 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %irq, align 4
  %call156 = tail call ptr @free_irq(i32 noundef %112, ptr noundef nonnull %call7.i.i) #12
  br label %for.body160

err_free_kfifo.thread294:                         ; preds = %for.inc65.2.err_free_kfifo.thread294_crit_edge, %for.inc65.1.err_free_kfifo.thread294_crit_edge, %for.inc65.err_free_kfifo.thread294_crit_edge
  %i.0273.lcssa.ph = phi i32 [ 3, %for.inc65.2.err_free_kfifo.thread294_crit_edge ], [ 2, %for.inc65.1.err_free_kfifo.thread294_crit_edge ], [ 1, %for.inc65.err_free_kfifo.thread294_crit_edge ]
  %dev63296 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev63296, ptr noundef nonnull @.str.22) #15
  br label %for.body160

for.body160:                                      ; preds = %err_free_kfifo.thread294, %for.end154, %do.end87
  %ret.3292 = phi i32 [ -12, %err_free_kfifo.thread294 ], [ %call.i, %do.end87 ], [ %86, %for.end154 ]
  %i.3291 = phi i32 [ %i.0273.lcssa.ph, %err_free_kfifo.thread294 ], [ 4, %do.end87 ], [ 4, %for.end154 ]
  %i.4280 = add nsw i32 %i.3291, -1
  %fifo_ul164 = getelementptr %struct.nozomi, ptr %call7.i.i, i32 0, i32 9, i32 %i.4280, i32 4
  tail call void @__kfifo_free(ptr noundef %fifo_ul164) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.3291)
  %cmp159 = icmp ugt i32 %i.3291, 1
  br i1 %cmp159, label %for.body160.1, label %for.body160.err_free_sbuf_crit_edge

for.body160.err_free_sbuf_crit_edge:              ; preds = %for.body160
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free_sbuf

for.body160.1:                                    ; preds = %for.body160
  %i.4280.1 = add nsw i32 %i.3291, -2
  %fifo_ul164.1 = getelementptr %struct.nozomi, ptr %call7.i.i, i32 0, i32 9, i32 %i.4280.1, i32 4
  tail call void @__kfifo_free(ptr noundef %fifo_ul164.1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.4280)
  %cmp159.1 = icmp ugt i32 %i.4280, 1
  br i1 %cmp159.1, label %for.body160.2, label %for.body160.1.err_free_sbuf_crit_edge

for.body160.1.err_free_sbuf_crit_edge:            ; preds = %for.body160.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free_sbuf

for.body160.2:                                    ; preds = %for.body160.1
  %i.4280.2 = add nsw i32 %i.3291, -3
  %fifo_ul164.2 = getelementptr %struct.nozomi, ptr %call7.i.i, i32 0, i32 9, i32 %i.4280.2, i32 4
  tail call void @__kfifo_free(ptr noundef %fifo_ul164.2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.4280.1)
  %cmp159.2 = icmp ugt i32 %i.4280.1, 1
  br i1 %cmp159.2, label %for.body160.3, label %for.body160.2.err_free_sbuf_crit_edge

for.body160.2.err_free_sbuf_crit_edge:            ; preds = %for.body160.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free_sbuf

for.body160.3:                                    ; preds = %for.body160.2
  call void @__sanitizer_cov_trace_pc() #14
  %i.4280.3 = add nsw i32 %i.3291, -4
  %fifo_ul164.3 = getelementptr %struct.nozomi, ptr %call7.i.i, i32 0, i32 9, i32 %i.4280.3, i32 4
  tail call void @__kfifo_free(ptr noundef %fifo_ul164.3) #12
  br label %err_free_sbuf

err_free_sbuf.sink.split:                         ; preds = %for.body54.preheader.err_free_sbuf.sink.split_crit_edge, %if.end42.err_free_sbuf.sink.split_crit_edge
  %.str.22.sink = phi ptr [ @.str.19, %if.end42.err_free_sbuf.sink.split_crit_edge ], [ @.str.22, %for.body54.preheader.err_free_sbuf.sink.split_crit_edge ]
  %dev63 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev63, ptr noundef nonnull %.str.22.sink) #15
  br label %err_free_sbuf

err_free_sbuf:                                    ; preds = %err_free_sbuf.sink.split, %for.body160.3, %for.body160.2.err_free_sbuf_crit_edge, %for.body160.1.err_free_sbuf_crit_edge, %for.body160.err_free_sbuf_crit_edge
  %ret.4 = phi i32 [ -12, %err_free_sbuf.sink.split ], [ %ret.3292, %for.body160.3 ], [ %ret.3292, %for.body160.2.err_free_sbuf_crit_edge ], [ %ret.3292, %for.body160.1.err_free_sbuf_crit_edge ], [ %ret.3292, %for.body160.err_free_sbuf_crit_edge ]
  %113 = ptrtoint ptr %send_buf to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %send_buf, align 8
  tail call void @kfree(ptr noundef %114) #12
  %115 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %call7.i.i, align 8
  tail call void @iounmap(ptr noundef %116) #12
  br label %err_rel_regs

err_rel_regs:                                     ; preds = %err_free_sbuf, %do.end40
  %ret.5 = phi i32 [ %ret.4, %err_free_sbuf ], [ -19, %do.end40 ]
  tail call void @pci_release_regions(ptr noundef %pdev) #12
  br label %err_disable_device

err_disable_device:                               ; preds = %err_rel_regs, %do.end30
  %ret.6 = phi i32 [ %call25, %do.end30 ], [ %ret.5, %err_rel_regs ]
  tail call void @pci_disable_device(ptr noundef %pdev) #12
  br label %err_free

err_free:                                         ; preds = %err_disable_device, %do.end21, %do.end11
  %ret.7 = phi i32 [ -12, %do.end11 ], [ %call16, %do.end21 ], [ %ret.6, %err_disable_device ]
  tail call void @kfree(ptr noundef %call7.i.i) #12
  br label %cleanup171

cleanup171:                                       ; preds = %err_free, %for.inc141.2.cleanup171_crit_edge, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ %ret.7, %err_free ], [ 0, %for.inc141.2.cleanup171_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nozomi_card_exit(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %last_ier = getelementptr inbounds %struct.nozomi, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %last_ier to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %last_ier, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !397
  tail call void @arm_heavy_mb() #12
  %3 = ptrtoint ptr %last_ier to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %last_ier, align 4
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  %reg_ier = getelementptr inbounds %struct.nozomi, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %reg_ier to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_ier, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %7, i16 %5) #12, !srcloc !393
  %arrayidx.i = getelementptr %struct.nozomi, ptr %1, i32 0, i32 9, i32 0
  tail call void @tty_port_tty_hangup(ptr noundef %arrayidx.i, i1 noundef zeroext false) #12
  %arrayidx.1.i = getelementptr %struct.nozomi, ptr %1, i32 0, i32 9, i32 1
  tail call void @tty_port_tty_hangup(ptr noundef %arrayidx.1.i, i1 noundef zeroext false) #12
  %arrayidx.2.i = getelementptr %struct.nozomi, ptr %1, i32 0, i32 9, i32 2
  tail call void @tty_port_tty_hangup(ptr noundef %arrayidx.2.i, i1 noundef zeroext false) #12
  %arrayidx.3.i = getelementptr %struct.nozomi, ptr %1, i32 0, i32 9, i32 3
  tail call void @tty_port_tty_hangup(ptr noundef %arrayidx.3.i, i1 noundef zeroext false) #12
  %open_ttys.i = getelementptr inbounds %struct.nozomi, ptr %1, i32 0, i32 14
  %8 = ptrtoint ptr %open_ttys.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %open_ttys.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not21.i = icmp eq i32 %9, 0
  br i1 %tobool.not21.i, label %entry.tty_exit.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.tty_exit.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %tty_exit.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  tail call void @msleep(i32 noundef 1) #12
  %10 = ptrtoint ptr %open_ttys.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %open_ttys.i, align 4
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %while.body.i.tty_exit.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

while.body.i.tty_exit.exit_crit_edge:             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tty_exit.exit

tty_exit.exit:                                    ; preds = %while.body.i.tty_exit.exit_crit_edge, %entry.tty_exit.exit_crit_edge
  %index_start.i = getelementptr inbounds %struct.nozomi, ptr %1, i32 0, i32 12
  %12 = load ptr, ptr @ntty_driver, align 4
  %13 = ptrtoint ptr %index_start.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %index_start.i, align 4
  tail call void @tty_unregister_device(ptr noundef %12, i32 noundef %14) #12
  tail call void @tty_port_destroy(ptr noundef %arrayidx.i) #12
  %15 = load ptr, ptr @ntty_driver, align 4
  %16 = ptrtoint ptr %index_start.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %index_start.i, align 4
  %add.1.i = add i32 %17, 1
  tail call void @tty_unregister_device(ptr noundef %15, i32 noundef %add.1.i) #12
  tail call void @tty_port_destroy(ptr noundef %arrayidx.1.i) #12
  %18 = load ptr, ptr @ntty_driver, align 4
  %19 = ptrtoint ptr %index_start.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %index_start.i, align 4
  %add.2.i = add i32 %20, 2
  tail call void @tty_unregister_device(ptr noundef %18, i32 noundef %add.2.i) #12
  tail call void @tty_port_destroy(ptr noundef %arrayidx.2.i) #12
  %21 = load ptr, ptr @ntty_driver, align 4
  %22 = ptrtoint ptr %index_start.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %index_start.i, align 4
  %add.3.i = add i32 %23, 3
  tail call void @tty_unregister_device(ptr noundef %21, i32 noundef %add.3.i) #12
  tail call void @tty_port_destroy(ptr noundef %arrayidx.3.i) #12
  %24 = load i32, ptr @debug, align 4
  %and = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %tty_exit.exit.do.end20_crit_edge, label %do.body9

tty_exit.exit.do.end20_crit_edge:                 ; preds = %tty_exit.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end20

do.body9:                                         ; preds = %tty_exit.exit
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nozomi_card_exit.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@nozomi_card_exit, %do.end20)) #12
          to label %if.then15 [label %do.end20], !srcloc !395

if.then15:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nozomi_card_exit.__UNIQUE_ID_ddebug276, ptr noundef nonnull @.str.142, i32 noundef 1478, ptr noundef nonnull @.str.141, i32 noundef 1) #12
  br label %do.end20

do.end20:                                         ; preds = %if.then15, %do.body9, %tty_exit.exit.do.end20_crit_edge
  %ul_addr = getelementptr %struct.nozomi, ptr %1, i32 0, i32 9, i32 4, i32 8
  %25 = ptrtoint ptr %ul_addr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ul_addr, align 4
  %tobool.not.i50 = icmp eq ptr %26, null
  br i1 %tobool.not.i50, label %do.end20.write_mem32.exit_crit_edge, label %if.end.i, !prof !391

do.end20.write_mem32.exit_crit_edge:              ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %write_mem32.exit

if.end.i:                                         ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %26, i16 1) #12, !srcloc !393
  br label %write_mem32.exit

write_mem32.exit:                                 ; preds = %if.end.i, %do.end20.write_mem32.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !399
  tail call void @arm_heavy_mb() #12
  %reg_fcr = getelementptr inbounds %struct.nozomi, ptr %1, i32 0, i32 3
  %27 = ptrtoint ptr %reg_fcr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg_fcr, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %28, i16 16) #12, !srcloc !393
  %pdev.i = getelementptr inbounds %struct.nozomi, ptr %1, i32 0, i32 8
  %29 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  tail call void @device_remove_file(ptr noundef %dev.i, ptr noundef nonnull @dev_attr_card_type) #12
  %31 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdev.i, align 4
  %dev2.i = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  tail call void @device_remove_file(ptr noundef %dev2.i, ptr noundef nonnull @dev_attr_open_ttys) #12
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %33 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %irq, align 4
  %call27 = tail call ptr @free_irq(i32 noundef %34, ptr noundef %1) #12
  %fifo_ul = getelementptr %struct.nozomi, ptr %1, i32 0, i32 9, i32 0, i32 4
  tail call void @__kfifo_free(ptr noundef %fifo_ul) #12
  %fifo_ul.1 = getelementptr %struct.nozomi, ptr %1, i32 0, i32 9, i32 1, i32 4
  tail call void @__kfifo_free(ptr noundef %fifo_ul.1) #12
  %fifo_ul.2 = getelementptr %struct.nozomi, ptr %1, i32 0, i32 9, i32 2, i32 4
  tail call void @__kfifo_free(ptr noundef %fifo_ul.2) #12
  %fifo_ul.3 = getelementptr %struct.nozomi, ptr %1, i32 0, i32 9, i32 3, i32 4
  tail call void @__kfifo_free(ptr noundef %fifo_ul.3) #12
  %send_buf = getelementptr inbounds %struct.nozomi, ptr %1, i32 0, i32 10
  %35 = ptrtoint ptr %send_buf to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %send_buf, align 4
  tail call void @kfree(ptr noundef %36) #12
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 4
  tail call void @iounmap(ptr noundef %38) #12
  tail call void @pci_release_regions(ptr noundef %pdev) #12
  tail call void @pci_disable_device(ptr noundef %pdev) #12
  %39 = ptrtoint ptr %index_start.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %index_start.i, align 4
  %div49 = lshr i32 %40, 2
  %arrayidx31 = getelementptr [64 x ptr], ptr @ndevs, i32 0, i32 %div49
  %41 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %arrayidx31, align 4
  tail call void @kfree(ptr noundef %1) #12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_alloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @interrupt_handler(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev_id, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %spin_mutex = getelementptr inbounds %struct.nozomi, ptr %dev_id, i32 0, i32 11
  tail call void @_raw_spin_lock(ptr noundef %spin_mutex) #12
  %reg_iir = getelementptr inbounds %struct.nozomi, ptr %dev_id, i32 0, i32 2
  %0 = ptrtoint ptr %reg_iir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_iir, align 4
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %1) #12, !srcloc !400
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !401
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %2)
  %cmp = icmp eq i16 %2, -1
  br i1 %cmp, label %if.end.none_crit_edge, label %if.end4

if.end.none_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %none

if.end4:                                          ; preds = %if.end
  %3 = tail call i16 @llvm.bswap.i16(i16 %2)
  %last_ier = getelementptr inbounds %struct.nozomi, ptr %dev_id, i32 0, i32 5
  %4 = ptrtoint ptr %last_ier to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %last_ier, align 4
  %and391 = and i16 %5, %3
  %conv8 = zext i16 %and391 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and391)
  %cmp9 = icmp eq i16 %and391, 0
  br i1 %cmp9, label %if.end4.none_crit_edge, label %do.body

if.end4.none_crit_edge:                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %none

do.body:                                          ; preds = %if.end4
  %6 = load i32, ptr @debug, align 4
  %and13 = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %do.body.do.end31_crit_edge, label %do.body16

do.body.do.end31_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end31

do.body16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @interrupt_handler.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@interrupt_handler, %do.end31)) #12
          to label %if.then23 [label %do.end31], !srcloc !395

if.then23:                                        ; preds = %do.body16
  %and.i = and i32 %conv8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then23.if.end.i_crit_edge, label %if.then.i

if.then23.if.end.i_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull @interrupt2str.buf, i32 noundef 256, ptr noundef nonnull @.str.49) #12
  %add.ptr.i = getelementptr i8, ptr @interrupt2str.buf, i32 %call.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then23.if.end.i_crit_edge
  %p.0.i = phi ptr [ %add.ptr.i, %if.then.i ], [ @interrupt2str.buf, %if.then23.if.end.i_crit_edge ]
  %and2.i = and i32 %conv8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end7.i_crit_edge, label %if.then4.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.ptr.lhs.cast.i = ptrtoint ptr %p.0.i to i32
  %sub.i = sub i32 add (i32 ptrtoint (ptr @interrupt2str.buf to i32), i32 256), %sub.ptr.lhs.cast.i
  %call5.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %p.0.i, i32 noundef %sub.i, ptr noundef nonnull @.str.50) #12
  %add.ptr6.i = getelementptr i8, ptr %p.0.i, i32 %call5.i
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then4.i, %if.end.i.if.end7.i_crit_edge
  %p.1.i = phi ptr [ %add.ptr6.i, %if.then4.i ], [ %p.0.i, %if.end.i.if.end7.i_crit_edge ]
  %and9.i = and i32 %conv8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.end7.i.if.end17.i_crit_edge, label %if.then11.i

if.end7.i.if.end17.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17.i

if.then11.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.ptr.lhs.cast12.i = ptrtoint ptr %p.1.i to i32
  %sub14.i = sub i32 add (i32 ptrtoint (ptr @interrupt2str.buf to i32), i32 256), %sub.ptr.lhs.cast12.i
  %call15.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %p.1.i, i32 noundef %sub14.i, ptr noundef nonnull @.str.51) #12
  %add.ptr16.i = getelementptr i8, ptr %p.1.i, i32 %call15.i
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then11.i, %if.end7.i.if.end17.i_crit_edge
  %p.2.i = phi ptr [ %add.ptr16.i, %if.then11.i ], [ %p.1.i, %if.end7.i.if.end17.i_crit_edge ]
  %and19.i = and i32 %conv8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool20.not.i, label %if.end17.i.if.end27.i_crit_edge, label %if.then21.i

if.end17.i.if.end27.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27.i

if.then21.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.ptr.lhs.cast22.i = ptrtoint ptr %p.2.i to i32
  %sub24.i = sub i32 add (i32 ptrtoint (ptr @interrupt2str.buf to i32), i32 256), %sub.ptr.lhs.cast22.i
  %call25.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %p.2.i, i32 noundef %sub24.i, ptr noundef nonnull @.str.52) #12
  %add.ptr26.i = getelementptr i8, ptr %p.2.i, i32 %call25.i
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then21.i, %if.end17.i.if.end27.i_crit_edge
  %p.3.i = phi ptr [ %add.ptr26.i, %if.then21.i ], [ %p.2.i, %if.end17.i.if.end27.i_crit_edge ]
  %and29.i = and i32 %conv8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp eq i32 %and29.i, 0
  br i1 %tobool30.not.i, label %if.end27.i.if.end37.i_crit_edge, label %if.then31.i

if.end27.i.if.end37.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37.i

if.then31.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.ptr.lhs.cast32.i = ptrtoint ptr %p.3.i to i32
  %sub34.i = sub i32 add (i32 ptrtoint (ptr @interrupt2str.buf to i32), i32 256), %sub.ptr.lhs.cast32.i
  %call35.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %p.3.i, i32 noundef %sub34.i, ptr noundef nonnull @.str.53) #12
  %add.ptr36.i = getelementptr i8, ptr %p.3.i, i32 %call35.i
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then31.i, %if.end27.i.if.end37.i_crit_edge
  %p.4.i = phi ptr [ %add.ptr36.i, %if.then31.i ], [ %p.3.i, %if.end27.i.if.end37.i_crit_edge ]
  %and39.i = and i32 %conv8, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.i)
  %tobool40.not.i = icmp eq i32 %and39.i, 0
  br i1 %tobool40.not.i, label %if.end37.i.if.end47.i_crit_edge, label %if.then41.i

if.end37.i.if.end47.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47.i

if.then41.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.ptr.lhs.cast42.i = ptrtoint ptr %p.4.i to i32
  %sub44.i = sub i32 add (i32 ptrtoint (ptr @interrupt2str.buf to i32), i32 256), %sub.ptr.lhs.cast42.i
  %call45.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %p.4.i, i32 noundef %sub44.i, ptr noundef nonnull @.str.54) #12
  %add.ptr46.i = getelementptr i8, ptr %p.4.i, i32 %call45.i
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.then41.i, %if.end37.i.if.end47.i_crit_edge
  %p.5.i = phi ptr [ %add.ptr46.i, %if.then41.i ], [ %p.4.i, %if.end37.i.if.end47.i_crit_edge ]
  %and49.i = and i32 %conv8, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49.i)
  %tobool50.not.i = icmp eq i32 %and49.i, 0
  br i1 %tobool50.not.i, label %if.end47.i.if.end57.i_crit_edge, label %if.then51.i

if.end47.i.if.end57.i_crit_edge:                  ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57.i

if.then51.i:                                      ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.ptr.lhs.cast52.i = ptrtoint ptr %p.5.i to i32
  %sub54.i = sub i32 add (i32 ptrtoint (ptr @interrupt2str.buf to i32), i32 256), %sub.ptr.lhs.cast52.i
  %call55.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %p.5.i, i32 noundef %sub54.i, ptr noundef nonnull @.str.55) #12
  %add.ptr56.i = getelementptr i8, ptr %p.5.i, i32 %call55.i
  br label %if.end57.i

if.end57.i:                                       ; preds = %if.then51.i, %if.end47.i.if.end57.i_crit_edge
  %p.6.i = phi ptr [ %add.ptr56.i, %if.then51.i ], [ %p.5.i, %if.end47.i.if.end57.i_crit_edge ]
  %and59.i = and i32 %conv8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59.i)
  %tobool60.not.i = icmp eq i32 %and59.i, 0
  br i1 %tobool60.not.i, label %if.end57.i.if.end67.i_crit_edge, label %if.then61.i

if.end57.i.if.end67.i_crit_edge:                  ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end67.i

if.then61.i:                                      ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.ptr.lhs.cast62.i = ptrtoint ptr %p.6.i to i32
  %sub64.i = sub i32 add (i32 ptrtoint (ptr @interrupt2str.buf to i32), i32 256), %sub.ptr.lhs.cast62.i
  %call65.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %p.6.i, i32 noundef %sub64.i, ptr noundef nonnull @.str.56) #12
  %add.ptr66.i = getelementptr i8, ptr %p.6.i, i32 %call65.i
  br label %if.end67.i

if.end67.i:                                       ; preds = %if.then61.i, %if.end57.i.if.end67.i_crit_edge
  %p.7.i = phi ptr [ %add.ptr66.i, %if.then61.i ], [ %p.6.i, %if.end57.i.if.end67.i_crit_edge ]
  %and69.i = and i32 %conv8, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69.i)
  %tobool70.not.i = icmp eq i32 %and69.i, 0
  br i1 %tobool70.not.i, label %if.end67.i.if.end77.i_crit_edge, label %if.then71.i

if.end67.i.if.end77.i_crit_edge:                  ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end77.i

if.then71.i:                                      ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.ptr.lhs.cast72.i = ptrtoint ptr %p.7.i to i32
  %sub74.i = sub i32 add (i32 ptrtoint (ptr @interrupt2str.buf to i32), i32 256), %sub.ptr.lhs.cast72.i
  %call75.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %p.7.i, i32 noundef %sub74.i, ptr noundef nonnull @.str.57) #12
  %add.ptr76.i = getelementptr i8, ptr %p.7.i, i32 %call75.i
  br label %if.end77.i

if.end77.i:                                       ; preds = %if.then71.i, %if.end67.i.if.end77.i_crit_edge
  %p.8.i = phi ptr [ %add.ptr76.i, %if.then71.i ], [ %p.7.i, %if.end67.i.if.end77.i_crit_edge ]
  %and79.i = and i32 %conv8, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79.i)
  %tobool80.not.i = icmp eq i32 %and79.i, 0
  br i1 %tobool80.not.i, label %if.end77.i.if.end87.i_crit_edge, label %if.then81.i

if.end77.i.if.end87.i_crit_edge:                  ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end87.i

if.then81.i:                                      ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.ptr.lhs.cast82.i = ptrtoint ptr %p.8.i to i32
  %sub84.i = sub i32 add (i32 ptrtoint (ptr @interrupt2str.buf to i32), i32 256), %sub.ptr.lhs.cast82.i
  %call85.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %p.8.i, i32 noundef %sub84.i, ptr noundef nonnull @.str.58) #12
  %add.ptr86.i = getelementptr i8, ptr %p.8.i, i32 %call85.i
  br label %if.end87.i

if.end87.i:                                       ; preds = %if.then81.i, %if.end77.i.if.end87.i_crit_edge
  %p.9.i = phi ptr [ %add.ptr86.i, %if.then81.i ], [ %p.8.i, %if.end77.i.if.end87.i_crit_edge ]
  %and89.i = and i32 %conv8, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89.i)
  %tobool90.not.i = icmp eq i32 %and89.i, 0
  br i1 %tobool90.not.i, label %if.end87.i.if.end97.i_crit_edge, label %if.then91.i

if.end87.i.if.end97.i_crit_edge:                  ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end97.i

if.then91.i:                                      ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.ptr.lhs.cast92.i = ptrtoint ptr %p.9.i to i32
  %sub94.i = sub i32 add (i32 ptrtoint (ptr @interrupt2str.buf to i32), i32 256), %sub.ptr.lhs.cast92.i
  %call95.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %p.9.i, i32 noundef %sub94.i, ptr noundef nonnull @.str.59) #12
  %add.ptr96.i = getelementptr i8, ptr %p.9.i, i32 %call95.i
  br label %if.end97.i

if.end97.i:                                       ; preds = %if.then91.i, %if.end87.i.if.end97.i_crit_edge
  %p.10.i = phi ptr [ %add.ptr96.i, %if.then91.i ], [ %p.9.i, %if.end87.i.if.end97.i_crit_edge ]
  %and99.i = and i32 %conv8, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99.i)
  %tobool100.not.i = icmp eq i32 %and99.i, 0
  br i1 %tobool100.not.i, label %if.end97.i.if.end107.i_crit_edge, label %if.then101.i

if.end97.i.if.end107.i_crit_edge:                 ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end107.i

if.then101.i:                                     ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.ptr.lhs.cast102.i = ptrtoint ptr %p.10.i to i32
  %sub104.i = sub i32 add (i32 ptrtoint (ptr @interrupt2str.buf to i32), i32 256), %sub.ptr.lhs.cast102.i
  %call105.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %p.10.i, i32 noundef %sub104.i, ptr noundef nonnull @.str.60) #12
  %add.ptr106.i = getelementptr i8, ptr %p.10.i, i32 %call105.i
  br label %if.end107.i

if.end107.i:                                      ; preds = %if.then101.i, %if.end97.i.if.end107.i_crit_edge
  %p.11.i = phi ptr [ %add.ptr106.i, %if.then101.i ], [ %p.10.i, %if.end97.i.if.end107.i_crit_edge ]
  %and109.i = and i32 %conv8, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and109.i)
  %tobool110.not.i = icmp eq i32 %and109.i, 0
  br i1 %tobool110.not.i, label %if.end107.i.if.end117.i_crit_edge, label %if.then111.i

if.end107.i.if.end117.i_crit_edge:                ; preds = %if.end107.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end117.i

if.then111.i:                                     ; preds = %if.end107.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.ptr.lhs.cast112.i = ptrtoint ptr %p.11.i to i32
  %sub114.i = sub i32 add (i32 ptrtoint (ptr @interrupt2str.buf to i32), i32 256), %sub.ptr.lhs.cast112.i
  %call115.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %p.11.i, i32 noundef %sub114.i, ptr noundef nonnull @.str.61) #12
  %add.ptr116.i = getelementptr i8, ptr %p.11.i, i32 %call115.i
  br label %if.end117.i

if.end117.i:                                      ; preds = %if.then111.i, %if.end107.i.if.end117.i_crit_edge
  %p.12.i = phi ptr [ %add.ptr116.i, %if.then111.i ], [ %p.11.i, %if.end107.i.if.end117.i_crit_edge ]
  %and119.i = and i32 %conv8, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and119.i)
  %tobool120.not.i = icmp eq i32 %and119.i, 0
  br i1 %tobool120.not.i, label %if.end117.i.interrupt2str.exit_crit_edge, label %if.then121.i

if.end117.i.interrupt2str.exit_crit_edge:         ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %interrupt2str.exit

if.then121.i:                                     ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.ptr.lhs.cast122.i = ptrtoint ptr %p.12.i to i32
  %sub124.i = sub i32 add (i32 ptrtoint (ptr @interrupt2str.buf to i32), i32 256), %sub.ptr.lhs.cast122.i
  %call125.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %p.12.i, i32 noundef %sub124.i, ptr noundef nonnull @.str.62) #12
  br label %interrupt2str.exit

interrupt2str.exit:                               ; preds = %if.then121.i, %if.end117.i.interrupt2str.exit_crit_edge
  %7 = ptrtoint ptr %last_ier to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %last_ier, align 4
  %conv27 = zext i16 %8 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @interrupt_handler.__UNIQUE_ID_ddebug273, ptr noundef nonnull @.str.37, i32 noundef 1134, ptr noundef nonnull @.str.36, ptr noundef nonnull @interrupt2str.buf, i32 noundef %conv8, i32 noundef %conv27) #12
  br label %do.end31

do.end31:                                         ; preds = %interrupt2str.exit, %do.body16, %do.body.do.end31_crit_edge
  %and33 = and i32 %conv8, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.end59, label %if.then35

if.then35:                                        ; preds = %do.end31
  %call36 = tail call fastcc i32 @nozomi_read_config_table(ptr noundef nonnull %dev_id)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.then46, label %do.body55, !prof !391

if.then46:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %last_ier to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %last_ier, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !402
  tail call void @arm_heavy_mb() #12
  %10 = ptrtoint ptr %last_ier to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %last_ier, align 4
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)
  %reg_ier = getelementptr inbounds %struct.nozomi, ptr %dev_id, i32 0, i32 4
  %13 = ptrtoint ptr %reg_ier to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg_ier, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %14, i16 %12) #12, !srcloc !393
  %pdev = getelementptr inbounds %struct.nozomi, ptr %dev_id, i32 0, i32 8
  %15 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.38) #15
  br label %exit_handler

do.body55:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !403
  tail call void @arm_heavy_mb() #12
  %reg_fcr = getelementptr inbounds %struct.nozomi, ptr %dev_id, i32 0, i32 3
  %17 = ptrtoint ptr %reg_fcr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_fcr, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %18, i16 128) #12, !srcloc !393
  br label %exit_handler

if.end59:                                         ; preds = %do.end31
  %and61 = and i32 %conv8, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %if.end59.if.end115_crit_edge, label %do.body64

if.end59.if.end115_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end115

do.body64:                                        ; preds = %if.end59
  %19 = load i32, ptr @debug, align 4
  %and65 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %do.body64.do.end88_crit_edge, label %do.body68

do.body64.do.end88_crit_edge:                     ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end88

do.body68:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @interrupt_handler.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@interrupt_handler, %do.end88)) #12
          to label %if.then82 [label %do.end88], !srcloc !395

if.then82:                                        ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @interrupt_handler.__UNIQUE_ID_ddebug274, ptr noundef nonnull @.str.39, i32 noundef 1149, ptr noundef nonnull @.str.36) #12
  br label %do.end88

do.end88:                                         ; preds = %if.then82, %do.body68, %do.body64.do.end88_crit_edge
  %20 = ptrtoint ptr %last_ier to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %last_ier, align 4
  %22 = and i16 %21, -4097
  store i16 %22, ptr %last_ier, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !404
  tail call void @arm_heavy_mb() #12
  %23 = ptrtoint ptr %last_ier to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %last_ier, align 4
  %25 = tail call i16 @llvm.bswap.i16(i16 %24)
  %reg_ier97 = getelementptr inbounds %struct.nozomi, ptr %dev_id, i32 0, i32 4
  %26 = ptrtoint ptr %reg_ier97 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg_ier97, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %27, i16 %25) #12, !srcloc !393
  %ul_addr.i = getelementptr %struct.nozomi, ptr %dev_id, i32 0, i32 9, i32 4, i32 8
  %update_flow_control.i = getelementptr %struct.nozomi, ptr %dev_id, i32 0, i32 9, i32 0, i32 1
  %28 = ptrtoint ptr %update_flow_control.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %update_flow_control.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i395 = icmp eq i8 %29, 0
  br i1 %tobool.not.i395, label %for.inc.i, label %port2ctrl.exit.i

port2ctrl.exit.i:                                 ; preds = %do.end88
  %ctrl_ul.i = getelementptr %struct.nozomi, ptr %dev_id, i32 0, i32 9, i32 0, i32 2
  %30 = ptrtoint ptr %ctrl_ul.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %ctrl_ul.i, align 1
  %31 = ptrtoint ptr %ul_addr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ul_addr.i, align 4
  %tobool.not.i.i = icmp eq ptr %32, null
  %tobool1.not.i.i = icmp eq ptr %ctrl_ul.i, null
  %spec.select.i.i = or i1 %tobool1.not.i.i, %tobool.not.i.i
  br i1 %spec.select.i.i, label %port2ctrl.exit.i.for.inc.thread.i_crit_edge, label %if.end.i.i, !prof !391

port2ctrl.exit.i.for.inc.thread.i_crit_edge:      ; preds = %port2ctrl.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.thread.i

if.end.i.i:                                       ; preds = %port2ctrl.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  tail call void @arm_heavy_mb() #12
  %33 = ptrtoint ptr %ctrl_ul.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %ctrl_ul.i, align 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %32, i16 %34) #12, !srcloc !393
  br label %for.inc.thread.i

for.inc.i:                                        ; preds = %do.end88
  %update_flow_control.1.i = getelementptr %struct.nozomi, ptr %dev_id, i32 0, i32 9, i32 1, i32 1
  %35 = ptrtoint ptr %update_flow_control.1.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %update_flow_control.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.1.i = icmp eq i8 %36, 0
  br i1 %tobool.not.1.i, label %for.inc.1.thread.i, label %port2ctrl.exit.1.i

for.inc.thread.i:                                 ; preds = %if.end.i.i, %port2ctrl.exit.i.for.inc.thread.i_crit_edge
  %37 = ptrtoint ptr %update_flow_control.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %update_flow_control.i, align 4
  %update_flow_control.134.i = getelementptr %struct.nozomi, ptr %dev_id, i32 0, i32 9, i32 1, i32 1
  %38 = ptrtoint ptr %update_flow_control.134.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %update_flow_control.134.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.135.i = icmp eq i8 %39, 0
  br i1 %tobool.not.135.i, label %for.inc.thread.i.for.inc.1.i_crit_edge, label %for.inc.thread.i.do.body101_crit_edge

for.inc.thread.i.do.body101_crit_edge:            ; preds = %for.inc.thread.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body101

for.inc.thread.i.for.inc.1.i_crit_edge:           ; preds = %for.inc.thread.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1.i

port2ctrl.exit.1.i:                               ; preds = %for.inc.i
  %ctrl_ul.1.i = getelementptr %struct.nozomi, ptr %dev_id, i32 0, i32 9, i32 1, i32 2
  %40 = ptrtoint ptr %ctrl_ul.1.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 2, ptr %ctrl_ul.1.i, align 1
  %41 = ptrtoint ptr %ul_addr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ul_addr.i, align 4
  %tobool.not.i.1.i = icmp eq ptr %42, null
  %tobool1.not.i.1.i = icmp eq ptr %ctrl_ul.1.i, null
  %spec.select.i.1.i = or i1 %tobool1.not.i.1.i, %tobool.not.i.1.i
  br i1 %spec.select.i.1.i, label %port2ctrl.exit.1.i.write_mem32.exit.1.i_crit_edge, label %if.end.i.1.i, !prof !391

port2ctrl.exit.1.i.write_mem32.exit.1.i_crit_edge: ; preds = %port2ctrl.exit.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %write_mem32.exit.1.i

if.end.i.1.i:                                     ; preds = %port2ctrl.exit.1.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  tail call void @arm_heavy_mb() #12
  %43 = ptrtoint ptr %ctrl_ul.1.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %ctrl_ul.1.i, align 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %42, i16 %44) #12, !srcloc !393
  br label %write_mem32.exit.1.i

write_mem32.exit.1.i:                             ; preds = %if.end.i.1.i, %port2ctrl.exit.1.i.write_mem32.exit.1.i_crit_edge
  %45 = ptrtoint ptr %update_flow_control.1.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %update_flow_control.1.i, align 4
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %write_mem32.exit.1.i, %for.inc.thread.i.for.inc.1.i_crit_edge
  %update_flow_control.2.i = getelementptr %struct.nozomi, ptr %dev_id, i32 0, i32 9, i32 2, i32 1
  %46 = ptrtoint ptr %update_flow_control.2.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %update_flow_control.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool.not.2.i = icmp eq i8 %47, 0
  br i1 %tobool.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %for.inc.1.i.do.body101_crit_edge

for.inc.1.i.do.body101_crit_edge:                 ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body101

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2.i

for.inc.1.thread.i:                               ; preds = %for.inc.i
  %update_flow_control.239.i = getelementptr %struct.nozomi, ptr %dev_id, i32 0, i32 9, i32 2, i32 1
  %48 = ptrtoint ptr %update_flow_control.239.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %update_flow_control.239.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool.not.240.i = icmp eq i8 %49, 0
  br i1 %tobool.not.240.i, label %for.inc.2.thread.i, label %port2ctrl.exit.2.i

port2ctrl.exit.2.i:                               ; preds = %for.inc.1.thread.i
  %ctrl_ul.2.i = getelementptr %struct.nozomi, ptr %dev_id, i32 0, i32 9, i32 2, i32 2
  %50 = ptrtoint ptr %ctrl_ul.2.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 3, ptr %ctrl_ul.2.i, align 1
  %51 = ptrtoint ptr %ul_addr.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ul_addr.i, align 4
  %tobool.not.i.2.i = icmp eq ptr %52, null
  %tobool1.not.i.2.i = icmp eq ptr %ctrl_ul.2.i, null
  %spec.select.i.2.i = or i1 %tobool1.not.i.2.i, %tobool.not.i.2.i
  br i1 %spec.select.i.2.i, label %port2ctrl.exit.2.i.write_mem32.exit.2.i_crit_edge, label %if.end.i.2.i, !prof !391

port2ctrl.exit.2.i.write_mem32.exit.2.i_crit_edge: ; preds = %port2ctrl.exit.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %write_mem32.exit.2.i

if.end.i.2.i:                                     ; preds = %port2ctrl.exit.2.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  tail call void @arm_heavy_mb() #12
  %53 = ptrtoint ptr %ctrl_ul.2.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %ctrl_ul.2.i, align 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %52, i16 %54) #12, !srcloc !393
  br label %write_mem32.exit.2.i

write_mem32.exit.2.i:                             ; preds = %if.end.i.2.i, %port2ctrl.exit.2.i.write_mem32.exit.2.i_crit_edge
  %55 = ptrtoint ptr %update_flow_control.239.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %update_flow_control.239.i, align 4
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %write_mem32.exit.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %update_flow_control.3.i = getelementptr %struct.nozomi, ptr %dev_id, i32 0, i32 9, i32 3, i32 1
  %56 = ptrtoint ptr %update_flow_control.3.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %update_flow_control.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool.not.3.i = icmp eq i8 %57, 0
  br i1 %tobool.not.3.i, label %for.inc.2.i.if.end115_crit_edge, label %for.inc.2.i.do.body101_crit_edge

for.inc.2.i.do.body101_crit_edge:                 ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body101

for.inc.2.i.if.end115_crit_edge:                  ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end115

for.inc.2.thread.i:                               ; preds = %for.inc.1.thread.i
  %update_flow_control.348.i = getelementptr %struct.nozomi, ptr %dev_id, i32 0, i32 9, i32 3, i32 1
  %58 = ptrtoint ptr %update_flow_control.348.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %update_flow_control.348.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool.not.349.i = icmp eq i8 %59, 0
  br i1 %tobool.not.349.i, label %for.inc.2.thread.i.if.end115_crit_edge, label %port2ctrl.exit.3.i

for.inc.2.thread.i.if.end115_crit_edge:           ; preds = %for.inc.2.thread.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end115

port2ctrl.exit.3.i:                               ; preds = %for.inc.2.thread.i
  %ctrl_ul.3.i = getelementptr %struct.nozomi, ptr %dev_id, i32 0, i32 9, i32 3, i32 2
  %60 = ptrtoint ptr %ctrl_ul.3.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 4, ptr %ctrl_ul.3.i, align 1
  %61 = ptrtoint ptr %ul_addr.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ul_addr.i, align 4
  %tobool.not.i.3.i = icmp eq ptr %62, null
  %tobool1.not.i.3.i = icmp eq ptr %ctrl_ul.3.i, null
  %spec.select.i.3.i = or i1 %tobool1.not.i.3.i, %tobool.not.i.3.i
  br i1 %spec.select.i.3.i, label %port2ctrl.exit.3.i.write_mem32.exit.3.i_crit_edge, label %if.end.i.3.i, !prof !391

port2ctrl.exit.3.i.write_mem32.exit.3.i_crit_edge: ; preds = %port2ctrl.exit.3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %write_mem32.exit.3.i

if.end.i.3.i:                                     ; preds = %port2ctrl.exit.3.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  tail call void @arm_heavy_mb() #12
  %63 = ptrtoint ptr %ctrl_ul.3.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %ctrl_ul.3.i, align 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %62, i16 %64) #12, !srcloc !393
  br label %write_mem32.exit.3.i

write_mem32.exit.3.i:                             ; preds = %if.end.i.3.i, %port2ctrl.exit.3.i.write_mem32.exit.3.i_crit_edge
  %65 = ptrtoint ptr %update_flow_control.348.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %update_flow_control.348.i, align 4
  br label %if.end115

do.body101:                                       ; preds = %for.inc.2.i.do.body101_crit_edge, %for.inc.1.i.do.body101_crit_edge, %for.inc.thread.i.do.body101_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !405
  tail call void @arm_heavy_mb() #12
  %reg_fcr104 = getelementptr inbounds %struct.nozomi, ptr %dev_id, i32 0, i32 3
  %66 = ptrtoint ptr %reg_fcr104 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %reg_fcr104, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %67, i16 16) #12, !srcloc !393
  %68 = ptrtoint ptr %last_ier to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %last_ier, align 4
  %70 = or i16 %69, 4096
  store i16 %70, ptr %last_ier, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !406
  tail call void @arm_heavy_mb() #12
  %71 = ptrtoint ptr %last_ier to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %last_ier, align 4
  %73 = tail call i16 @llvm.bswap.i16(i16 %72)
  %74 = ptrtoint ptr %reg_ier97 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %reg_ier97, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %75, i16 %73) #12, !srcloc !393
  br label %if.end115

if.end115:                                        ; preds = %do.body101, %write_mem32.exit.3.i, %for.inc.2.thread.i.if.end115_crit_edge, %for.inc.2.i.if.end115_crit_edge, %if.end59.if.end115_crit_edge
  %and117 = and i32 %conv8, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and117)
  %tobool118.not = icmp eq i32 %and117, 0
  br i1 %tobool118.not, label %if.end115.if.end125_crit_edge, label %if.then119

if.end115.if.end125_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end125

if.then119:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @receive_flow_control(ptr noundef nonnull %dev_id)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !407
  tail call void @arm_heavy_mb() #12
  %reg_fcr124 = getelementptr inbounds %struct.nozomi, ptr %dev_id, i32 0, i32 3
  %76 = ptrtoint ptr %reg_fcr124 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %reg_fcr124, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %77, i16 8) #12, !srcloc !393
  br label %if.end125

if.end125:                                        ; preds = %if.then119, %if.end115.if.end125_crit_edge
  %and127 = and i32 %conv8, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and127)
  %tobool128.not = icmp eq i32 %and127, 0
  br i1 %tobool128.not, label %if.end125.if.end139_crit_edge, label %if.then129

if.end125.if.end139_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end139

if.then129:                                       ; preds = %if.end125
  %toggle_dl = getelementptr inbounds %struct.nozomi, ptr %dev_id, i32 0, i32 9, i32 0, i32 7
  %call130 = tail call fastcc i32 @handle_data_dl(ptr noundef nonnull %dev_id, i32 noundef 0, ptr noundef %toggle_dl, i16 noundef zeroext %and391, i16 noundef zeroext 1, i16 noundef zeroext 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130)
  %tobool131.not = icmp eq i32 %call130, 0
  br i1 %tobool131.not, label %do.end135, label %if.then129.if.end139_crit_edge

if.then129.if.end139_crit_edge:                   ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end139

do.end135:                                        ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #14
  %pdev136 = getelementptr inbounds %struct.nozomi, ptr %dev_id, i32 0, i32 8
  %78 = ptrtoint ptr %pdev136 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %pdev136, align 4
  %dev137 = getelementptr inbounds %struct.pci_dev, ptr %79, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev137, ptr noundef nonnull @.str.41) #15
  br label %exit_handler

if.end139:                                        ; preds = %if.then129.if.end139_crit_edge, %if.end125.if.end139_crit_edge
  %and141 = and i32 %conv8, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and141)
  %tobool142.not = icmp eq i32 %and141, 0
  br i1 %tobool142.not, label %if.end139.if.end153_crit_edge, label %if.then143

if.end139.if.end153_crit_edge:                    ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end153

if.then143:                                       ; preds = %if.end139
  %toggle_ul.i = getelementptr inbounds %struct.nozomi, ptr %dev_id, i32 0, i32 9, i32 0, i32 10
  %80 = ptrtoint ptr %toggle_ul.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %toggle_ul.i, align 1
  %82 = zext i8 %81 to i64
  call void @__sanitizer_cov_trace_switch(i64 %82, ptr @__sancov_gen_cov_switch_values)
  switch i8 %81, label %if.then143.do.end149_crit_edge [
    i8 0, label %land.lhs.true.i
    i8 1, label %land.lhs.true63.i
  ]

if.then143.do.end149_crit_edge:                   ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end149

land.lhs.true.i:                                  ; preds = %if.then143
  %and.i397 = and i32 %conv8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i397)
  %tobool.not.i398 = icmp eq i32 %and.i397, 0
  br i1 %tobool.not.i398, label %land.lhs.true.i.do.end149_crit_edge, label %if.then.i400

land.lhs.true.i.do.end149_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end149

if.then.i400:                                     ; preds = %land.lhs.true.i
  %83 = ptrtoint ptr %last_ier to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %last_ier, align 4
  %85 = and i16 %84, -11
  store i16 %85, ptr %last_ier, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !408
  tail call void @arm_heavy_mb() #12
  %86 = ptrtoint ptr %last_ier to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %last_ier, align 4
  %88 = tail call i16 @llvm.bswap.i16(i16 %87) #12
  %reg_ier.i = getelementptr inbounds %struct.nozomi, ptr %dev_id, i32 0, i32 4
  %89 = ptrtoint ptr %reg_ier.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %reg_ier.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %90, i16 %88) #12, !srcloc !393
  %call.i399 = tail call fastcc i32 @send_data(i32 noundef 0, ptr noundef nonnull %dev_id) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i399)
  %tobool8.not.i = icmp eq i32 %call.i399, 0
  br i1 %tobool8.not.i, label %if.then.i400.if.end.i401_crit_edge, label %do.body10.i

if.then.i400.if.end.i401_crit_edge:               ; preds = %if.then.i400
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i401

do.body10.i:                                      ; preds = %if.then.i400
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !409
  tail call void @arm_heavy_mb() #12
  %reg_fcr.i = getelementptr inbounds %struct.nozomi, ptr %dev_id, i32 0, i32 3
  %91 = ptrtoint ptr %reg_fcr.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %reg_fcr.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %92, i16 512) #12, !srcloc !393
  %93 = ptrtoint ptr %last_ier to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %last_ier, align 4
  %95 = or i16 %94, 10
  store i16 %95, ptr %last_ier, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !410
  tail call void @arm_heavy_mb() #12
  %96 = ptrtoint ptr %last_ier to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %last_ier, align 4
  %98 = tail call i16 @llvm.bswap.i16(i16 %97) #12
  %99 = ptrtoint ptr %reg_ier.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %reg_ier.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %100, i16 %98) #12, !srcloc !393
  %101 = ptrtoint ptr %toggle_ul.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %toggle_ul.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool22.not.i = icmp eq i8 %102, 0
  %conv23.i = zext i1 %tobool22.not.i to i8
  %103 = ptrtoint ptr %toggle_ul.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %conv23.i, ptr %toggle_ul.i, align 1
  br label %if.end.i401

if.end.i401:                                      ; preds = %do.body10.i, %if.then.i400.if.end.i401_crit_edge
  %and25.i = and i32 %conv8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  br i1 %tobool26.not.i, label %if.end.i401.if.end153_crit_edge, label %if.then27.i

if.end.i401.if.end153_crit_edge:                  ; preds = %if.end.i401
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end153

if.then27.i:                                      ; preds = %if.end.i401
  %104 = ptrtoint ptr %last_ier to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %last_ier, align 4
  %106 = and i16 %105, -11
  store i16 %106, ptr %last_ier, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !411
  tail call void @arm_heavy_mb() #12
  %107 = ptrtoint ptr %last_ier to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %last_ier, align 4
  %109 = tail call i16 @llvm.bswap.i16(i16 %108) #12
  %110 = ptrtoint ptr %reg_ier.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %reg_ier.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %111, i16 %109) #12, !srcloc !393
  %call37.i = tail call fastcc i32 @send_data(i32 noundef 0, ptr noundef nonnull %dev_id) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %tobool38.not.i = icmp eq i32 %call37.i, 0
  br i1 %tobool38.not.i, label %if.then27.i.if.end153_crit_edge, label %do.body40.i

if.then27.i.if.end153_crit_edge:                  ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end153

do.body40.i:                                      ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !412
  tail call void @arm_heavy_mb() #12
  %reg_fcr43.i = getelementptr inbounds %struct.nozomi, ptr %dev_id, i32 0, i32 3
  %112 = ptrtoint ptr %reg_fcr43.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %reg_fcr43.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %113, i16 2048) #12, !srcloc !393
  %114 = ptrtoint ptr %last_ier to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %last_ier, align 4
  %116 = or i16 %115, 10
  store i16 %116, ptr %last_ier, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !413
  tail call void @arm_heavy_mb() #12
  %117 = ptrtoint ptr %last_ier to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %last_ier, align 4
  %119 = tail call i16 @llvm.bswap.i16(i16 %118) #12
  %120 = ptrtoint ptr %reg_ier.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %reg_ier.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %121, i16 %119) #12, !srcloc !393
  br label %if.end153.sink.split

land.lhs.true63.i:                                ; preds = %if.then143
  %and65.i = and i32 %conv8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65.i)
  %tobool66.not.i = icmp eq i32 %and65.i, 0
  br i1 %tobool66.not.i, label %land.lhs.true63.i.do.end149_crit_edge, label %if.then67.i

land.lhs.true63.i.do.end149_crit_edge:            ; preds = %land.lhs.true63.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end149

if.then67.i:                                      ; preds = %land.lhs.true63.i
  %122 = ptrtoint ptr %last_ier to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %last_ier, align 4
  %124 = and i16 %123, -11
  store i16 %124, ptr %last_ier, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !414
  tail call void @arm_heavy_mb() #12
  %125 = ptrtoint ptr %last_ier to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %last_ier, align 4
  %127 = tail call i16 @llvm.bswap.i16(i16 %126) #12
  %reg_ier76.i = getelementptr inbounds %struct.nozomi, ptr %dev_id, i32 0, i32 4
  %128 = ptrtoint ptr %reg_ier76.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %reg_ier76.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %129, i16 %127) #12, !srcloc !393
  %call77.i = tail call fastcc i32 @send_data(i32 noundef 0, ptr noundef nonnull %dev_id) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77.i)
  %tobool78.not.i = icmp eq i32 %call77.i, 0
  br i1 %tobool78.not.i, label %if.then67.i.if.end98.i_crit_edge, label %do.body80.i

if.then67.i.if.end98.i_crit_edge:                 ; preds = %if.then67.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end98.i

do.body80.i:                                      ; preds = %if.then67.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !415
  tail call void @arm_heavy_mb() #12
  %reg_fcr83.i = getelementptr inbounds %struct.nozomi, ptr %dev_id, i32 0, i32 3
  %130 = ptrtoint ptr %reg_fcr83.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %reg_fcr83.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %131, i16 2048) #12, !srcloc !393
  %132 = ptrtoint ptr %last_ier to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %last_ier, align 4
  %134 = or i16 %133, 10
  store i16 %134, ptr %last_ier, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !416
  tail call void @arm_heavy_mb() #12
  %135 = ptrtoint ptr %last_ier to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %last_ier, align 4
  %137 = tail call i16 @llvm.bswap.i16(i16 %136) #12
  %138 = ptrtoint ptr %reg_ier76.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %reg_ier76.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %139, i16 %137) #12, !srcloc !393
  %140 = ptrtoint ptr %toggle_ul.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %toggle_ul.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %141)
  %tobool94.not.i = icmp eq i8 %141, 0
  %conv97.i = zext i1 %tobool94.not.i to i8
  %142 = ptrtoint ptr %toggle_ul.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %conv97.i, ptr %toggle_ul.i, align 1
  br label %if.end98.i

if.end98.i:                                       ; preds = %do.body80.i, %if.then67.i.if.end98.i_crit_edge
  %and100.i = and i32 %conv8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100.i)
  %tobool101.not.i = icmp eq i32 %and100.i, 0
  br i1 %tobool101.not.i, label %if.end98.i.if.end153_crit_edge, label %if.then102.i

if.end98.i.if.end153_crit_edge:                   ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end153

if.then102.i:                                     ; preds = %if.end98.i
  %143 = ptrtoint ptr %last_ier to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %last_ier, align 4
  %145 = and i16 %144, -11
  store i16 %145, ptr %last_ier, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !417
  tail call void @arm_heavy_mb() #12
  %146 = ptrtoint ptr %last_ier to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %last_ier, align 4
  %148 = tail call i16 @llvm.bswap.i16(i16 %147) #12
  %149 = ptrtoint ptr %reg_ier76.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %reg_ier76.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %150, i16 %148) #12, !srcloc !393
  %call112.i = tail call fastcc i32 @send_data(i32 noundef 0, ptr noundef nonnull %dev_id) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112.i)
  %tobool113.not.i = icmp eq i32 %call112.i, 0
  br i1 %tobool113.not.i, label %if.then102.i.if.end153_crit_edge, label %do.body115.i

if.then102.i.if.end153_crit_edge:                 ; preds = %if.then102.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end153

do.body115.i:                                     ; preds = %if.then102.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !418
  tail call void @arm_heavy_mb() #12
  %reg_fcr118.i = getelementptr inbounds %struct.nozomi, ptr %dev_id, i32 0, i32 3
  %151 = ptrtoint ptr %reg_fcr118.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %reg_fcr118.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %152, i16 512) #12, !srcloc !393
  %153 = ptrtoint ptr %last_ier to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %last_ier, align 4
  %155 = or i16 %154, 10
  store i16 %155, ptr %last_ier, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !419
  tail call void @arm_heavy_mb() #12
  %156 = ptrtoint ptr %last_ier to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %last_ier, align 4
  %158 = tail call i16 @llvm.bswap.i16(i16 %157) #12
  %159 = ptrtoint ptr %reg_ier76.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %reg_ier76.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %160, i16 %158) #12, !srcloc !393
  br label %if.end153.sink.split

do.end149:                                        ; preds = %land.lhs.true63.i.do.end149_crit_edge, %land.lhs.true.i.do.end149_crit_edge, %if.then143.do.end149_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !420
  tail call void @arm_heavy_mb() #12
  %161 = shl i16 %and391, 8
  %162 = and i16 %161, 2560
  %reg_fcr142.i = getelementptr inbounds %struct.nozomi, ptr %dev_id, i32 0, i32 3
  %163 = ptrtoint ptr %reg_fcr142.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %reg_fcr142.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %164, i16 %162) #12, !srcloc !393
  %pdev.i = getelementptr inbounds %struct.nozomi, ptr %dev_id, i32 0, i32 8
  %165 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %166, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.118) #15
  %167 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %pdev.i, align 4
  %dev151 = getelementptr inbounds %struct.pci_dev, ptr %168, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev151, ptr noundef nonnull @.str.44) #15
  br label %exit_handler

if.end153.sink.split:                             ; preds = %do.body115.i, %do.body40.i
  %169 = ptrtoint ptr %toggle_ul.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %toggle_ul.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %170)
  %tobool54.not.i = icmp eq i8 %170, 0
  %conv57.i = zext i1 %tobool54.not.i to i8
  %171 = ptrtoint ptr %toggle_ul.i to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 %conv57.i, ptr %toggle_ul.i, align 1
  br label %if.end153

if.end153:                                        ; preds = %if.end153.sink.split, %if.then102.i.if.end153_crit_edge, %if.end98.i.if.end153_crit_edge, %if.then27.i.if.end153_crit_edge, %if.end.i401.if.end153_crit_edge, %if.end139.if.end153_crit_edge
  %and155 = and i32 %conv8, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and155)
  %tobool156.not = icmp eq i32 %and155, 0
  br i1 %tobool156.not, label %if.end153.if.end170_crit_edge, label %if.then157

if.end153.if.end170_crit_edge:                    ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end170

if.then157:                                       ; preds = %if.end153
  %toggle_dl160 = getelementptr %struct.nozomi, ptr %dev_id, i32 0, i32 9, i32 1, i32 7
  %call161 = tail call fastcc i32 @handle_data_dl(ptr noundef nonnull %dev_id, i32 noundef 1, ptr noundef %toggle_dl160, i16 noundef zeroext %and391, i16 noundef zeroext 16, i16 noundef zeroext 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call161)
  %tobool162.not = icmp eq i32 %call161, 0
  br i1 %tobool162.not, label %do.end166, label %if.then157.if.end170_crit_edge

if.then157.if.end170_crit_edge:                   ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end170

do.end166:                                        ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #14
  %pdev167 = getelementptr inbounds %struct.nozomi, ptr %dev_id, i32 0, i32 8
  %172 = ptrtoint ptr %pdev167 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %pdev167, align 4
  %dev168 = getelementptr inbounds %struct.pci_dev, ptr %173, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev168, ptr noundef nonnull @.str.47) #15
  br label %exit_handler

if.end170:                                        ; preds = %if.then157.if.end170_crit_edge, %if.end153.if.end170_crit_edge
  %and172 = and i32 %conv8, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and172)
  %tobool173.not = icmp eq i32 %and172, 0
  br i1 %tobool173.not, label %if.end170.if.end202_crit_edge, label %if.then174

if.end170.if.end202_crit_edge:                    ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end202

if.then174:                                       ; preds = %if.end170
  %174 = ptrtoint ptr %last_ier to i32
  call void @__asan_load2_noabort(i32 %174)
  %175 = load i16, ptr %last_ier, align 4
  %176 = and i16 %175, -65
  store i16 %176, ptr %last_ier, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !421
  tail call void @arm_heavy_mb() #12
  %177 = ptrtoint ptr %last_ier to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %last_ier, align 4
  %179 = tail call i16 @llvm.bswap.i16(i16 %178)
  %reg_ier183 = getelementptr inbounds %struct.nozomi, ptr %dev_id, i32 0, i32 4
  %180 = ptrtoint ptr %reg_ier183 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %reg_ier183, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %181, i16 %179) #12, !srcloc !393
  %call184 = tail call fastcc i32 @send_data(i32 noundef 1, ptr noundef nonnull %dev_id)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call184)
  %tobool185.not = icmp eq i32 %call184, 0
  br i1 %tobool185.not, label %if.then174.if.end202_crit_edge, label %do.body187

if.then174.if.end202_crit_edge:                   ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end202

do.body187:                                       ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !422
  tail call void @arm_heavy_mb() #12
  %reg_fcr190 = getelementptr inbounds %struct.nozomi, ptr %dev_id, i32 0, i32 3
  %182 = ptrtoint ptr %reg_fcr190 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %reg_fcr190, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %183, i16 16384) #12, !srcloc !393
  %184 = ptrtoint ptr %last_ier to i32
  call void @__asan_load2_noabort(i32 %184)
  %185 = load i16, ptr %last_ier, align 4
  %186 = or i16 %185, 64
  store i16 %186, ptr %last_ier, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !423
  tail call void @arm_heavy_mb() #12
  %187 = ptrtoint ptr %last_ier to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %last_ier, align 4
  %189 = tail call i16 @llvm.bswap.i16(i16 %188)
  %190 = ptrtoint ptr %reg_ier183 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %reg_ier183, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %191, i16 %189) #12, !srcloc !393
  br label %if.end202

if.end202:                                        ; preds = %do.body187, %if.then174.if.end202_crit_edge, %if.end170.if.end202_crit_edge
  %and204 = and i32 %conv8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and204)
  %tobool205.not = icmp eq i32 %and204, 0
  br i1 %tobool205.not, label %if.end202.if.end215_crit_edge, label %if.then206

if.end202.if.end215_crit_edge:                    ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end215

if.then206:                                       ; preds = %if.end202
  %call207 = tail call fastcc i32 @receive_data(i32 noundef 2, ptr noundef nonnull %dev_id)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call207)
  %tobool208.not = icmp eq i32 %call207, 0
  br i1 %tobool208.not, label %if.then206.if.end215_crit_edge, label %do.body210

if.then206.if.end215_crit_edge:                   ; preds = %if.then206
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end215

do.body210:                                       ; preds = %if.then206
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !424
  tail call void @arm_heavy_mb() #12
  %reg_fcr213 = getelementptr inbounds %struct.nozomi, ptr %dev_id, i32 0, i32 3
  %192 = ptrtoint ptr %reg_fcr213 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %reg_fcr213, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %193, i16 -32768) #12, !srcloc !393
  br label %if.end215

if.end215:                                        ; preds = %do.body210, %if.then206.if.end215_crit_edge, %if.end202.if.end215_crit_edge
  %and217 = and i32 %conv8, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and217)
  %tobool218.not = icmp eq i32 %and217, 0
  br i1 %tobool218.not, label %if.end215.if.end247_crit_edge, label %if.then219

if.end215.if.end247_crit_edge:                    ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end247

if.then219:                                       ; preds = %if.end215
  %194 = ptrtoint ptr %last_ier to i32
  call void @__asan_load2_noabort(i32 %194)
  %195 = load i16, ptr %last_ier, align 4
  %196 = and i16 %195, -257
  store i16 %196, ptr %last_ier, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !425
  tail call void @arm_heavy_mb() #12
  %197 = ptrtoint ptr %last_ier to i32
  call void @__asan_load2_noabort(i32 %197)
  %198 = load i16, ptr %last_ier, align 4
  %199 = tail call i16 @llvm.bswap.i16(i16 %198)
  %reg_ier228 = getelementptr inbounds %struct.nozomi, ptr %dev_id, i32 0, i32 4
  %200 = ptrtoint ptr %reg_ier228 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %reg_ier228, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %201, i16 %199) #12, !srcloc !393
  %call229 = tail call fastcc i32 @send_data(i32 noundef 2, ptr noundef nonnull %dev_id)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call229)
  %tobool230.not = icmp eq i32 %call229, 0
  br i1 %tobool230.not, label %if.then219.if.end247_crit_edge, label %do.body232

if.then219.if.end247_crit_edge:                   ; preds = %if.then219
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end247

do.body232:                                       ; preds = %if.then219
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !426
  tail call void @arm_heavy_mb() #12
  %reg_fcr235 = getelementptr inbounds %struct.nozomi, ptr %dev_id, i32 0, i32 3
  %202 = ptrtoint ptr %reg_fcr235 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %reg_fcr235, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %203, i16 1) #12, !srcloc !393
  %204 = ptrtoint ptr %last_ier to i32
  call void @__asan_load2_noabort(i32 %204)
  %205 = load i16, ptr %last_ier, align 4
  %206 = or i16 %205, 256
  store i16 %206, ptr %last_ier, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !427
  tail call void @arm_heavy_mb() #12
  %207 = ptrtoint ptr %last_ier to i32
  call void @__asan_load2_noabort(i32 %207)
  %208 = load i16, ptr %last_ier, align 4
  %209 = tail call i16 @llvm.bswap.i16(i16 %208)
  %210 = ptrtoint ptr %reg_ier228 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %reg_ier228, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %211, i16 %209) #12, !srcloc !393
  br label %if.end247

if.end247:                                        ; preds = %do.body232, %if.then219.if.end247_crit_edge, %if.end215.if.end247_crit_edge
  %and249 = and i32 %conv8, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and249)
  %tobool250.not = icmp eq i32 %and249, 0
  br i1 %tobool250.not, label %if.end247.if.end260_crit_edge, label %if.then251

if.end247.if.end260_crit_edge:                    ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end260

if.then251:                                       ; preds = %if.end247
  %call252 = tail call fastcc i32 @receive_data(i32 noundef 3, ptr noundef nonnull %dev_id)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call252)
  %tobool253.not = icmp eq i32 %call252, 0
  br i1 %tobool253.not, label %if.then251.if.end260_crit_edge, label %do.body255

if.then251.if.end260_crit_edge:                   ; preds = %if.then251
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end260

do.body255:                                       ; preds = %if.then251
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !428
  tail call void @arm_heavy_mb() #12
  %reg_fcr258 = getelementptr inbounds %struct.nozomi, ptr %dev_id, i32 0, i32 3
  %212 = ptrtoint ptr %reg_fcr258 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %reg_fcr258, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %213, i16 2) #12, !srcloc !393
  br label %if.end260

if.end260:                                        ; preds = %do.body255, %if.then251.if.end260_crit_edge, %if.end247.if.end260_crit_edge
  %and262 = and i32 %conv8, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and262)
  %tobool263.not = icmp eq i32 %and262, 0
  br i1 %tobool263.not, label %if.end260.exit_handler_crit_edge, label %if.then264

if.end260.exit_handler_crit_edge:                 ; preds = %if.end260
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit_handler

if.then264:                                       ; preds = %if.end260
  %214 = ptrtoint ptr %last_ier to i32
  call void @__asan_load2_noabort(i32 %214)
  %215 = load i16, ptr %last_ier, align 4
  %216 = and i16 %215, -1025
  store i16 %216, ptr %last_ier, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !429
  tail call void @arm_heavy_mb() #12
  %217 = ptrtoint ptr %last_ier to i32
  call void @__asan_load2_noabort(i32 %217)
  %218 = load i16, ptr %last_ier, align 4
  %219 = tail call i16 @llvm.bswap.i16(i16 %218)
  %reg_ier273 = getelementptr inbounds %struct.nozomi, ptr %dev_id, i32 0, i32 4
  %220 = ptrtoint ptr %reg_ier273 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %reg_ier273, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %221, i16 %219) #12, !srcloc !393
  %call274 = tail call fastcc i32 @send_data(i32 noundef 3, ptr noundef nonnull %dev_id)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call274)
  %tobool275.not = icmp eq i32 %call274, 0
  br i1 %tobool275.not, label %if.then264.exit_handler_crit_edge, label %do.body277

if.then264.exit_handler_crit_edge:                ; preds = %if.then264
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit_handler

do.body277:                                       ; preds = %if.then264
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !430
  tail call void @arm_heavy_mb() #12
  %reg_fcr280 = getelementptr inbounds %struct.nozomi, ptr %dev_id, i32 0, i32 3
  %222 = ptrtoint ptr %reg_fcr280 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %reg_fcr280, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %223, i16 4) #12, !srcloc !393
  %224 = ptrtoint ptr %last_ier to i32
  call void @__asan_load2_noabort(i32 %224)
  %225 = load i16, ptr %last_ier, align 4
  %226 = or i16 %225, 1024
  store i16 %226, ptr %last_ier, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !431
  tail call void @arm_heavy_mb() #12
  %227 = ptrtoint ptr %last_ier to i32
  call void @__asan_load2_noabort(i32 %227)
  %228 = load i16, ptr %last_ier, align 4
  %229 = tail call i16 @llvm.bswap.i16(i16 %228)
  %230 = ptrtoint ptr %reg_ier273 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %reg_ier273, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %231, i16 %229) #12, !srcloc !393
  br label %exit_handler

exit_handler:                                     ; preds = %do.body277, %if.then264.exit_handler_crit_edge, %if.end260.exit_handler_crit_edge, %do.end166, %do.end149, %do.end135, %do.body55, %if.then46
  tail call void @_raw_spin_unlock(ptr noundef %spin_mutex) #12
  %flip = getelementptr inbounds %struct.nozomi, ptr %dev_id, i32 0, i32 1
  %call296 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %flip) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call296)
  %tobool297.not = icmp eq i32 %call296, 0
  br i1 %tobool297.not, label %exit_handler.for.inc_crit_edge, label %if.then298

exit_handler.for.inc_crit_edge:                   ; preds = %exit_handler
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then298:                                       ; preds = %exit_handler
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx300 = getelementptr %struct.nozomi, ptr %dev_id, i32 0, i32 9, i32 0
  tail call void @tty_flip_buffer_push(ptr noundef %arrayidx300) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then298, %exit_handler.for.inc_crit_edge
  %call296.1 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %flip) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call296.1)
  %tobool297.not.1 = icmp eq i32 %call296.1, 0
  br i1 %tobool297.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then298.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

if.then298.1:                                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx300.1 = getelementptr %struct.nozomi, ptr %dev_id, i32 0, i32 9, i32 1
  tail call void @tty_flip_buffer_push(ptr noundef %arrayidx300.1) #12
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then298.1, %for.inc.for.inc.1_crit_edge
  %call296.2 = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %flip) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call296.2)
  %tobool297.not.2 = icmp eq i32 %call296.2, 0
  br i1 %tobool297.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then298.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

if.then298.2:                                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx300.2 = getelementptr %struct.nozomi, ptr %dev_id, i32 0, i32 9, i32 2
  tail call void @tty_flip_buffer_push(ptr noundef %arrayidx300.2) #12
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then298.2, %for.inc.1.for.inc.2_crit_edge
  %call296.3 = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %flip) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call296.3)
  %tobool297.not.3 = icmp eq i32 %call296.3, 0
  br i1 %tobool297.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then298.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

if.then298.3:                                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx300.3 = getelementptr %struct.nozomi, ptr %dev_id, i32 0, i32 9, i32 3
  tail call void @tty_flip_buffer_push(ptr noundef %arrayidx300.3) #12
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then298.3, %for.inc.2.for.inc.3_crit_edge
  %call296.4 = tail call i32 @_test_and_clear_bit(i32 noundef 4, ptr noundef %flip) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call296.4)
  %tobool297.not.4 = icmp eq i32 %call296.4, 0
  br i1 %tobool297.not.4, label %for.inc.3.cleanup_crit_edge, label %if.then298.4

for.inc.3.cleanup_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then298.4:                                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx300.4 = getelementptr %struct.nozomi, ptr %dev_id, i32 0, i32 9, i32 4
  tail call void @tty_flip_buffer_push(ptr noundef %arrayidx300.4) #12
  br label %cleanup

none:                                             ; preds = %if.end4.none_crit_edge, %if.end.none_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %spin_mutex) #12
  br label %cleanup

cleanup:                                          ; preds = %none, %if.then298.4, %for.inc.3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %none ], [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then298.4 ], [ 1, %for.inc.3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_port_register_device(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unregister_device(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__kfifo_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nozomi_read_config_table(ptr noundef %dc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %config_table = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 7
  %0 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dc, align 4
  %tobool.not.i = icmp eq ptr %1, null
  %tobool1.not.i = icmp eq ptr %config_table, null
  %spec.select.i = or i1 %tobool1.not.i, %tobool.not.i
  br i1 %spec.select.i, label %entry.read_mem32.exit_crit_edge, label %entry.while.body.i_crit_edge, !prof !391

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.read_mem32.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %read_mem32.exit

while.body.i:                                     ; preds = %if.end25.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %buf.addr.047.i = phi ptr [ %incdec.ptr.i, %if.end25.i.while.body.i_crit_edge ], [ %config_table, %entry.while.body.i_crit_edge ]
  %i.046.i = phi i32 [ %add24.i, %if.end25.i.while.body.i_crit_edge ], [ 0, %entry.while.body.i_crit_edge ]
  %ptr.044.i = phi ptr [ %incdec.ptr26.i, %if.end25.i.while.body.i_crit_edge ], [ %1, %entry.while.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %i.046.i)
  %cmp12.i = icmp eq i32 %i.046.i, 60
  br i1 %cmp12.i, label %if.then13.i, label %if.else.i

if.then13.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %ptr.044.i) #12, !srcloc !400
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !432
  %3 = ptrtoint ptr %buf.addr.047.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %buf.addr.047.i, align 2
  br label %if.end25.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ptr.044.i) #12, !srcloc !433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !434
  %5 = ptrtoint ptr %buf.addr.047.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %buf.addr.047.i, align 4
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.else.i, %if.then13.i
  %.sink.i = phi i32 [ 4, %if.else.i ], [ 2, %if.then13.i ]
  %add24.i = add nuw nsw i32 %.sink.i, %i.046.i
  %incdec.ptr.i = getelementptr i32, ptr %buf.addr.047.i, i32 1
  %incdec.ptr26.i = getelementptr i32, ptr %ptr.044.i, i32 1
  %cmp.i = icmp ult i32 %add24.i, 62
  br i1 %cmp.i, label %if.end25.i.while.body.i_crit_edge, label %if.end25.i.read_mem32.exit_crit_edge

if.end25.i.read_mem32.exit_crit_edge:             ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %read_mem32.exit

if.end25.i.while.body.i_crit_edge:                ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

read_mem32.exit:                                  ; preds = %if.end25.i.read_mem32.exit_crit_edge, %entry.read_mem32.exit_crit_edge
  %6 = ptrtoint ptr %config_table to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %config_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -269484290, i32 %7)
  %cmp.not = icmp eq i32 %7, -269484290
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %read_mem32.exit
  call void @__sanitizer_cov_trace_pc() #14
  %pdev = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 8
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.63, i32 noundef %7, i32 noundef -269484290) #15
  br label %return

if.end:                                           ; preds = %read_mem32.exit
  %version = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 7, i32 2
  %10 = ptrtoint ptr %version to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %version, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp5 = icmp eq i16 %11, 0
  br i1 %cmp5, label %if.end.if.then10_crit_edge, label %lor.lhs.false

if.end.if.then10_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10

lor.lhs.false:                                    ; preds = %if.end
  %toggle = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 7, i32 4
  %12 = ptrtoint ptr %toggle to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %toggle, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %bf.load)
  %cmp8 = icmp ult i8 %bf.load, 8
  br i1 %cmp8, label %lor.lhs.false.if.then10_crit_edge, label %if.then116

lor.lhs.false.if.then10_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10

if.then10:                                        ; preds = %lor.lhs.false.if.then10_crit_edge, %if.end.if.then10_crit_edge
  %13 = load i32, ptr @debug, align 4
  %and = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then10.do.end23_crit_edge, label %do.body13

if.then10.do.end23_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end23

do.body13:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nozomi_read_config_table.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@nozomi_read_config_table, %do.end23)) #12
          to label %if.then18 [label %do.end23], !srcloc !395

if.then18:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nozomi_read_config_table.__UNIQUE_ID_ddebug259, ptr noundef nonnull @.str.65, i32 noundef 625, ptr noundef nonnull @.str.64) #12
  br label %do.end23

do.end23:                                         ; preds = %if.then18, %do.body13, %if.then10.do.end23_crit_edge
  %14 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dc, align 4
  %dl_start.i = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 7, i32 7
  %16 = ptrtoint ptr %dl_start.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %dl_start.i, align 2
  %conv.i = zext i16 %17 to i32
  %add.ptr.i = getelementptr i8, ptr %15, i32 %conv.i
  %dl_addr.i = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 9, i32 0, i32 5
  %18 = ptrtoint ptr %dl_addr.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr.i, ptr %dl_addr.i, align 4
  %dl_mdm_len1.i = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 7, i32 6
  %19 = ptrtoint ptr %dl_mdm_len1.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %dl_mdm_len1.i, align 4
  %conv3.i = zext i16 %20 to i32
  %add.ptr4.i = getelementptr i8, ptr %add.ptr.i, i32 %conv3.i
  %arrayidx8.i = getelementptr %struct.nozomi, ptr %dc, i32 0, i32 9, i32 0, i32 5, i32 1
  %21 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr4.i, ptr %arrayidx8.i, align 4
  %sub.i233 = add nsw i32 %conv3.i, -4
  %dl_size.i = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 9, i32 0, i32 6
  %22 = ptrtoint ptr %dl_size.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %sub.i233, ptr %dl_size.i, align 4
  %dl_mdm_len2.i = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 7, i32 9
  %23 = ptrtoint ptr %dl_mdm_len2.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %dl_mdm_len2.i, align 2
  %conv16.i = zext i16 %24 to i32
  %sub17.i = add nsw i32 %conv16.i, -4
  %arrayidx21.i = getelementptr %struct.nozomi, ptr %dc, i32 0, i32 9, i32 0, i32 6, i32 1
  %25 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %sub17.i, ptr %arrayidx21.i, align 4
  %add.ptr25.i = getelementptr i8, ptr %add.ptr4.i, i32 %conv16.i
  %dl_addr28.i = getelementptr %struct.nozomi, ptr %dc, i32 0, i32 9, i32 1, i32 5
  %26 = ptrtoint ptr %dl_addr28.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %add.ptr25.i, ptr %dl_addr28.i, align 4
  %dl_diag_len1.i = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 7, i32 8
  %27 = ptrtoint ptr %dl_diag_len1.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %dl_diag_len1.i, align 4
  %conv31.i = zext i16 %28 to i32
  %sub32.i = add nsw i32 %conv31.i, -4
  %dl_size35.i = getelementptr %struct.nozomi, ptr %dc, i32 0, i32 9, i32 1, i32 6
  %29 = ptrtoint ptr %dl_size35.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %sub32.i, ptr %dl_size35.i, align 4
  %add.ptr40.i = getelementptr i8, ptr %add.ptr25.i, i32 %conv31.i
  %arrayidx44.i = getelementptr %struct.nozomi, ptr %dc, i32 0, i32 9, i32 1, i32 5, i32 1
  %30 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %add.ptr40.i, ptr %arrayidx44.i, align 4
  %dl_diag_len2.i = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 7, i32 11
  %31 = ptrtoint ptr %dl_diag_len2.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %dl_diag_len2.i, align 2
  %conv46.i = zext i16 %32 to i32
  %sub47.i = add nsw i32 %conv46.i, -4
  %arrayidx51.i = getelementptr %struct.nozomi, ptr %dc, i32 0, i32 9, i32 1, i32 6, i32 1
  %33 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %sub47.i, ptr %arrayidx51.i, align 4
  %add.ptr55.i = getelementptr i8, ptr %add.ptr40.i, i32 %conv46.i
  %dl_addr58.i = getelementptr %struct.nozomi, ptr %dc, i32 0, i32 9, i32 2, i32 5
  %34 = ptrtoint ptr %dl_addr58.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %add.ptr55.i, ptr %dl_addr58.i, align 4
  %dl_app1_len.i = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 7, i32 10
  %35 = ptrtoint ptr %dl_app1_len.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %dl_app1_len.i, align 4
  %conv61.i = zext i16 %36 to i32
  %sub62.i = add nsw i32 %conv61.i, -4
  %dl_size65.i = getelementptr %struct.nozomi, ptr %dc, i32 0, i32 9, i32 2, i32 6
  %37 = ptrtoint ptr %dl_size65.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %sub62.i, ptr %dl_size65.i, align 4
  %add.ptr70.i = getelementptr i8, ptr %add.ptr55.i, i32 %conv61.i
  %dl_addr73.i = getelementptr %struct.nozomi, ptr %dc, i32 0, i32 9, i32 3, i32 5
  %38 = ptrtoint ptr %dl_addr73.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %add.ptr70.i, ptr %dl_addr73.i, align 4
  %dl_app2_len.i = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 7, i32 13
  %39 = ptrtoint ptr %dl_app2_len.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %dl_app2_len.i, align 2
  %conv76.i = zext i16 %40 to i32
  %sub77.i = add nsw i32 %conv76.i, -4
  %dl_size80.i = getelementptr %struct.nozomi, ptr %dc, i32 0, i32 9, i32 3, i32 6
  %41 = ptrtoint ptr %dl_size80.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %sub77.i, ptr %dl_size80.i, align 4
  %add.ptr85.i = getelementptr i8, ptr %add.ptr70.i, i32 %conv76.i
  %dl_addr88.i = getelementptr %struct.nozomi, ptr %dc, i32 0, i32 9, i32 4, i32 5
  %42 = ptrtoint ptr %dl_addr88.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %add.ptr85.i, ptr %dl_addr88.i, align 4
  %dl_ctrl_len.i = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 7, i32 12
  %43 = ptrtoint ptr %dl_ctrl_len.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %dl_ctrl_len.i, align 4
  %conv91.i = zext i16 %44 to i32
  %sub92.i = add nsw i32 %conv91.i, -4
  %dl_size95.i = getelementptr %struct.nozomi, ptr %dc, i32 0, i32 9, i32 4, i32 6
  %45 = ptrtoint ptr %dl_size95.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %sub92.i, ptr %dl_size95.i, align 4
  %ul_start.i = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 7, i32 16
  %46 = ptrtoint ptr %ul_start.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %ul_start.i, align 2
  %conv99.i = zext i16 %47 to i32
  %add.ptr100.i = getelementptr i8, ptr %15, i32 %conv99.i
  %ul_addr.i = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 9, i32 0, i32 8
  %48 = ptrtoint ptr %ul_addr.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %add.ptr100.i, ptr %ul_addr.i, align 4
  %ul_mdm_len1.i = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 7, i32 15
  %49 = ptrtoint ptr %ul_mdm_len1.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %ul_mdm_len1.i, align 4
  %conv105.i = zext i16 %50 to i32
  %sub106.i = add nsw i32 %conv105.i, -4
  %ul_size.i = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 9, i32 0, i32 9
  %51 = ptrtoint ptr %ul_size.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %sub106.i, ptr %ul_size.i, align 4
  %add.ptr113.i = getelementptr i8, ptr %add.ptr100.i, i32 %conv105.i
  %arrayidx117.i = getelementptr %struct.nozomi, ptr %dc, i32 0, i32 9, i32 0, i32 8, i32 1
  %52 = ptrtoint ptr %arrayidx117.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %add.ptr113.i, ptr %arrayidx117.i, align 4
  %ul_mdm_len2.i = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 7, i32 18
  %53 = ptrtoint ptr %ul_mdm_len2.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %ul_mdm_len2.i, align 2
  %conv119.i = zext i16 %54 to i32
  %sub120.i = add nsw i32 %conv119.i, -4
  %arrayidx124.i = getelementptr %struct.nozomi, ptr %dc, i32 0, i32 9, i32 0, i32 9, i32 1
  %55 = ptrtoint ptr %arrayidx124.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %sub120.i, ptr %arrayidx124.i, align 4
  %add.ptr128.i = getelementptr i8, ptr %add.ptr113.i, i32 %conv119.i
  %ul_addr131.i = getelementptr %struct.nozomi, ptr %dc, i32 0, i32 9, i32 1, i32 8
  %56 = ptrtoint ptr %ul_addr131.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %add.ptr128.i, ptr %ul_addr131.i, align 4
  %ul_diag_len.i = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 7, i32 17
  %57 = ptrtoint ptr %ul_diag_len.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %ul_diag_len.i, align 4
  %conv134.i = zext i16 %58 to i32
  %sub135.i = add nsw i32 %conv134.i, -4
  %ul_size138.i = getelementptr %struct.nozomi, ptr %dc, i32 0, i32 9, i32 1, i32 9
  %59 = ptrtoint ptr %ul_size138.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %sub135.i, ptr %ul_size138.i, align 4
  %add.ptr143.i = getelementptr i8, ptr %add.ptr128.i, i32 %conv134.i
  %ul_addr146.i = getelementptr %struct.nozomi, ptr %dc, i32 0, i32 9, i32 2, i32 8
  %60 = ptrtoint ptr %ul_addr146.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %add.ptr143.i, ptr %ul_addr146.i, align 4
  %ul_app1_len.i = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 7, i32 19
  %61 = ptrtoint ptr %ul_app1_len.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %ul_app1_len.i, align 4
  %conv149.i = zext i16 %62 to i32
  %sub150.i = add nsw i32 %conv149.i, -4
  %ul_size153.i = getelementptr %struct.nozomi, ptr %dc, i32 0, i32 9, i32 2, i32 9
  %63 = ptrtoint ptr %ul_size153.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %sub150.i, ptr %ul_size153.i, align 4
  %add.ptr158.i = getelementptr i8, ptr %add.ptr143.i, i32 %conv149.i
  %ul_addr161.i = getelementptr %struct.nozomi, ptr %dc, i32 0, i32 9, i32 3, i32 8
  %64 = ptrtoint ptr %ul_addr161.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %add.ptr158.i, ptr %ul_addr161.i, align 4
  %ul_app2_len.i = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 7, i32 20
  %65 = ptrtoint ptr %ul_app2_len.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %ul_app2_len.i, align 2
  %conv164.i = zext i16 %66 to i32
  %sub165.i = add nsw i32 %conv164.i, -4
  %ul_size168.i = getelementptr %struct.nozomi, ptr %dc, i32 0, i32 9, i32 3, i32 9
  %67 = ptrtoint ptr %ul_size168.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %sub165.i, ptr %ul_size168.i, align 4
  %add.ptr173.i = getelementptr i8, ptr %add.ptr158.i, i32 %conv164.i
  %ul_addr176.i = getelementptr %struct.nozomi, ptr %dc, i32 0, i32 9, i32 4, i32 8
  %68 = ptrtoint ptr %ul_addr176.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %add.ptr173.i, ptr %ul_addr176.i, align 4
  %ul_ctrl_len.i = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 7, i32 21
  %69 = ptrtoint ptr %ul_ctrl_len.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %ul_ctrl_len.i, align 4
  %conv179.i = zext i16 %70 to i32
  %sub180.i = add nsw i32 %conv179.i, -4
  %ul_size183.i = getelementptr %struct.nozomi, ptr %dc, i32 0, i32 9, i32 4, i32 9
  %71 = ptrtoint ptr %ul_size183.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %sub180.i, ptr %ul_size183.i, align 4
  %toggle25 = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 7, i32 4
  %72 = ptrtoint ptr %toggle25 to i32
  call void @__asan_load1_noabort(i32 %72)
  %bf.load26 = load i8, ptr %toggle25, align 1
  %bf.clear = and i8 %bf.load26, 1
  %toggle_ul = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 9, i32 0, i32 10
  %73 = ptrtoint ptr %toggle_ul to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %bf.clear, ptr %toggle_ul, align 4
  %bf.lshr32 = lshr i8 %bf.load26, 1
  %bf.clear33 = and i8 %bf.lshr32, 1
  %toggle_dl = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 9, i32 0, i32 7
  %74 = ptrtoint ptr %toggle_dl to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %bf.clear33, ptr %toggle_dl, align 4
  %bf.lshr41 = lshr i8 %bf.load26, 2
  %bf.clear42 = and i8 %bf.lshr41, 1
  %toggle_dl47 = getelementptr %struct.nozomi, ptr %dc, i32 0, i32 9, i32 1, i32 7
  %75 = ptrtoint ptr %toggle_dl47 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %bf.clear42, ptr %toggle_dl47, align 4
  %76 = load i32, ptr @debug, align 4
  %and49 = and i32 %76, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %do.end23.do.end84_crit_edge, label %do.body52

do.end23.do.end84_crit_edge:                      ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end84

do.body52:                                        ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nozomi_read_config_table.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@nozomi_read_config_table, %do.end84)) #12
          to label %if.then66 [label %do.end84], !srcloc !395

if.then66:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #14
  %77 = ptrtoint ptr %toggle_ul to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %toggle_ul, align 4
  %conv70 = zext i8 %78 to i32
  %79 = ptrtoint ptr %toggle_dl to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %toggle_dl, align 4
  %conv74 = zext i8 %80 to i32
  %81 = ptrtoint ptr %toggle_dl47 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %toggle_dl47, align 4
  %conv78 = zext i8 %82 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nozomi_read_config_table.__UNIQUE_ID_ddebug260, ptr noundef nonnull @.str.66, i32 noundef 634, ptr noundef nonnull @.str.64, i32 noundef %conv70, i32 noundef %conv74, i32 noundef %conv78) #12
  br label %do.end84

do.end84:                                         ; preds = %if.then66, %do.body52, %do.end23.do.end84_crit_edge
  tail call fastcc void @dump_table(ptr noundef %dc)
  %ctrl_dl = getelementptr %struct.nozomi, ptr %dc, i32 0, i32 9, i32 0, i32 3
  %83 = ptrtoint ptr %ctrl_dl to i32
  call void @__asan_storeN_noabort(i32 %83, i32 2)
  store i16 0, ptr %ctrl_dl, align 1
  %ctrl_ul = getelementptr %struct.nozomi, ptr %dc, i32 0, i32 9, i32 0, i32 2
  %84 = ptrtoint ptr %ctrl_ul to i32
  call void @__asan_storeN_noabort(i32 %84, i32 2)
  store i16 0, ptr %ctrl_ul, align 1
  %ctrl_dl.1 = getelementptr %struct.nozomi, ptr %dc, i32 0, i32 9, i32 1, i32 3
  %85 = ptrtoint ptr %ctrl_dl.1 to i32
  call void @__asan_storeN_noabort(i32 %85, i32 2)
  store i16 0, ptr %ctrl_dl.1, align 1
  %ctrl_ul.1 = getelementptr %struct.nozomi, ptr %dc, i32 0, i32 9, i32 1, i32 2
  %86 = ptrtoint ptr %ctrl_ul.1 to i32
  call void @__asan_storeN_noabort(i32 %86, i32 2)
  store i16 0, ptr %ctrl_ul.1, align 1
  %ctrl_dl.2 = getelementptr %struct.nozomi, ptr %dc, i32 0, i32 9, i32 2, i32 3
  %87 = ptrtoint ptr %ctrl_dl.2 to i32
  call void @__asan_storeN_noabort(i32 %87, i32 2)
  store i16 0, ptr %ctrl_dl.2, align 1
  %ctrl_ul.2 = getelementptr %struct.nozomi, ptr %dc, i32 0, i32 9, i32 2, i32 2
  %88 = ptrtoint ptr %ctrl_ul.2 to i32
  call void @__asan_storeN_noabort(i32 %88, i32 2)
  store i16 0, ptr %ctrl_ul.2, align 1
  %ctrl_dl.3 = getelementptr %struct.nozomi, ptr %dc, i32 0, i32 9, i32 3, i32 3
  %89 = ptrtoint ptr %ctrl_dl.3 to i32
  call void @__asan_storeN_noabort(i32 %89, i32 2)
  store i16 0, ptr %ctrl_dl.3, align 1
  %ctrl_ul.3 = getelementptr %struct.nozomi, ptr %dc, i32 0, i32 9, i32 3, i32 2
  %90 = ptrtoint ptr %ctrl_ul.3 to i32
  call void @__asan_storeN_noabort(i32 %90, i32 2)
  store i16 0, ptr %ctrl_ul.3, align 1
  %last_ier = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 5
  %91 = ptrtoint ptr %last_ier to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %last_ier, align 4
  %93 = or i16 %92, 2048
  store i16 %93, ptr %last_ier, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !435
  tail call void @arm_heavy_mb() #12
  %94 = ptrtoint ptr %last_ier to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %last_ier, align 4
  %96 = tail call i16 @llvm.bswap.i16(i16 %95)
  %reg_ier = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 4
  %97 = ptrtoint ptr %reg_ier to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %reg_ier, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %98, i16 %96) #12, !srcloc !393
  %state = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 13
  %99 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 2, ptr %state, align 4
  %pdev101 = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 8
  %100 = ptrtoint ptr %pdev101 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %pdev101, align 4
  %dev102 = getelementptr inbounds %struct.pci_dev, ptr %101, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev102, ptr noundef nonnull @.str.68) #15
  br label %return

if.then116:                                       ; preds = %lor.lhs.false
  %102 = load i32, ptr @debug, align 4
  %and118 = and i32 %102, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and118)
  %tobool119.not = icmp eq i32 %and118, 0
  br i1 %tobool119.not, label %if.then116.do.end144_crit_edge, label %do.body121

if.then116.do.end144_crit_edge:                   ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end144

do.body121:                                       ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nozomi_read_config_table.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@nozomi_read_config_table, %do.end144)) #12
          to label %if.then135 [label %do.end144], !srcloc !395

if.then135:                                       ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nozomi_read_config_table.__UNIQUE_ID_ddebug261, ptr noundef nonnull @.str.70, i32 noundef 655, ptr noundef nonnull @.str.64) #12
  br label %do.end144

do.end144:                                        ; preds = %if.then135, %do.body121, %if.then116.do.end144_crit_edge
  %pdev145 = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 8
  %103 = ptrtoint ptr %pdev145 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %pdev145, align 4
  %dev146 = getelementptr inbounds %struct.pci_dev, ptr %104, i32 0, i32 44
  %105 = ptrtoint ptr %version to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %version, align 2
  %conv149 = zext i16 %106 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev146, ptr noundef nonnull @.str.72, i32 noundef %conv149) #15
  %107 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dc, align 4
  %dl_start.i234 = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 7, i32 7
  %109 = ptrtoint ptr %dl_start.i234 to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %dl_start.i234, align 2
  %conv.i235 = zext i16 %110 to i32
  %add.ptr.i236 = getelementptr i8, ptr %108, i32 %conv.i235
  %dl_addr.i237 = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 9, i32 0, i32 5
  %111 = ptrtoint ptr %dl_addr.i237 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %add.ptr.i236, ptr %dl_addr.i237, align 4
  %dl_mdm_len1.i238 = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 7, i32 6
  %112 = ptrtoint ptr %dl_mdm_len1.i238 to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %dl_mdm_len1.i238, align 4
  %conv3.i239 = zext i16 %113 to i32
  %add.ptr4.i240 = getelementptr i8, ptr %add.ptr.i236, i32 %conv3.i239
  %arrayidx8.i241 = getelementptr %struct.nozomi, ptr %dc, i32 0, i32 9, i32 0, i32 5, i32 1
  %114 = ptrtoint ptr %arrayidx8.i241 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %add.ptr4.i240, ptr %arrayidx8.i241, align 4
  %sub.i242 = add nsw i32 %conv3.i239, -4
  %dl_size.i243 = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 9, i32 0, i32 6
  %115 = ptrtoint ptr %dl_size.i243 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %sub.i242, ptr %dl_size.i243, align 4
  %dl_mdm_len2.i244 = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 7, i32 9
  %116 = ptrtoint ptr %dl_mdm_len2.i244 to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %dl_mdm_len2.i244, align 2
  %conv16.i245 = zext i16 %117 to i32
  %sub17.i246 = add nsw i32 %conv16.i245, -4
  %arrayidx21.i247 = getelementptr %struct.nozomi, ptr %dc, i32 0, i32 9, i32 0, i32 6, i32 1
  %118 = ptrtoint ptr %arrayidx21.i247 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %sub17.i246, ptr %arrayidx21.i247, align 4
  %add.ptr25.i248 = getelementptr i8, ptr %add.ptr4.i240, i32 %conv16.i245
  %dl_addr28.i249 = getelementptr %struct.nozomi, ptr %dc, i32 0, i32 9, i32 1, i32 5
  %119 = ptrtoint ptr %dl_addr28.i249 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %add.ptr25.i248, ptr %dl_addr28.i249, align 4
  %dl_diag_len1.i250 = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 7, i32 8
  %120 = ptrtoint ptr %dl_diag_len1.i250 to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %dl_diag_len1.i250, align 4
  %conv31.i251 = zext i16 %121 to i32
  %sub32.i252 = add nsw i32 %conv31.i251, -4
  %dl_size35.i253 = getelementptr %struct.nozomi, ptr %dc, i32 0, i32 9, i32 1, i32 6
  %122 = ptrtoint ptr %dl_size35.i253 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %sub32.i252, ptr %dl_size35.i253, align 4
  %add.ptr40.i254 = getelementptr i8, ptr %add.ptr25.i248, i32 %conv31.i251
  %arrayidx44.i255 = getelementptr %struct.nozomi, ptr %dc, i32 0, i32 9, i32 1, i32 5, i32 1
  %123 = ptrtoint ptr %arrayidx44.i255 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %add.ptr40.i254, ptr %arrayidx44.i255, align 4
  %dl_diag_len2.i256 = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 7, i32 11
  %124 = ptrtoint ptr %dl_diag_len2.i256 to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %dl_diag_len2.i256, align 2
  %conv46.i257 = zext i16 %125 to i32
  %sub47.i258 = add nsw i32 %conv46.i257, -4
  %arrayidx51.i259 = getelementptr %struct.nozomi, ptr %dc, i32 0, i32 9, i32 1, i32 6, i32 1
  %126 = ptrtoint ptr %arrayidx51.i259 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %sub47.i258, ptr %arrayidx51.i259, align 4
  %add.ptr55.i260 = getelementptr i8, ptr %add.ptr40.i254, i32 %conv46.i257
  %dl_addr58.i261 = getelementptr %struct.nozomi, ptr %dc, i32 0, i32 9, i32 2, i32 5
  %127 = ptrtoint ptr %dl_addr58.i261 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %add.ptr55.i260, ptr %dl_addr58.i261, align 4
  %dl_app1_len.i262 = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 7, i32 10
  %128 = ptrtoint ptr %dl_app1_len.i262 to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %dl_app1_len.i262, align 4
  %conv61.i263 = zext i16 %129 to i32
  %sub62.i264 = add nsw i32 %conv61.i263, -4
  %dl_size65.i265 = getelementptr %struct.nozomi, ptr %dc, i32 0, i32 9, i32 2, i32 6
  %130 = ptrtoint ptr %dl_size65.i265 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %sub62.i264, ptr %dl_size65.i265, align 4
  %add.ptr70.i266 = getelementptr i8, ptr %add.ptr55.i260, i32 %conv61.i263
  %dl_addr73.i267 = getelementptr %struct.nozomi, ptr %dc, i32 0, i32 9, i32 3, i32 5
  %131 = ptrtoint ptr %dl_addr73.i267 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %add.ptr70.i266, ptr %dl_addr73.i267, align 4
  %dl_app2_len.i268 = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 7, i32 13
  %132 = ptrtoint ptr %dl_app2_len.i268 to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %dl_app2_len.i268, align 2
  %conv76.i269 = zext i16 %133 to i32
  %sub77.i270 = add nsw i32 %conv76.i269, -4
  %dl_size80.i271 = getelementptr %struct.nozomi, ptr %dc, i32 0, i32 9, i32 3, i32 6
  %134 = ptrtoint ptr %dl_size80.i271 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %sub77.i270, ptr %dl_size80.i271, align 4
  %add.ptr85.i272 = getelementptr i8, ptr %add.ptr70.i266, i32 %conv76.i269
  %dl_addr88.i273 = getelementptr %struct.nozomi, ptr %dc, i32 0, i32 9, i32 4, i32 5
  %135 = ptrtoint ptr %dl_addr88.i273 to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %add.ptr85.i272, ptr %dl_addr88.i273, align 4
  %dl_ctrl_len.i274 = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 7, i32 12
  %136 = ptrtoint ptr %dl_ctrl_len.i274 to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %dl_ctrl_len.i274, align 4
  %conv91.i275 = zext i16 %137 to i32
  %sub92.i276 = add nsw i32 %conv91.i275, -4
  %dl_size95.i277 = getelementptr %struct.nozomi, ptr %dc, i32 0, i32 9, i32 4, i32 6
  %138 = ptrtoint ptr %dl_size95.i277 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %sub92.i276, ptr %dl_size95.i277, align 4
  %ul_start.i278 = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 7, i32 16
  %139 = ptrtoint ptr %ul_start.i278 to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %ul_start.i278, align 2
  %conv99.i279 = zext i16 %140 to i32
  %add.ptr100.i280 = getelementptr i8, ptr %108, i32 %conv99.i279
  %ul_addr.i281 = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 9, i32 0, i32 8
  %141 = ptrtoint ptr %ul_addr.i281 to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %add.ptr100.i280, ptr %ul_addr.i281, align 4
  %ul_mdm_len1.i282 = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 7, i32 15
  %142 = ptrtoint ptr %ul_mdm_len1.i282 to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %ul_mdm_len1.i282, align 4
  %conv105.i283 = zext i16 %143 to i32
  %sub106.i284 = add nsw i32 %conv105.i283, -4
  %ul_size.i285 = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 9, i32 0, i32 9
  %144 = ptrtoint ptr %ul_size.i285 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %sub106.i284, ptr %ul_size.i285, align 4
  %add.ptr113.i286 = getelementptr i8, ptr %add.ptr100.i280, i32 %conv105.i283
  %arrayidx117.i287 = getelementptr %struct.nozomi, ptr %dc, i32 0, i32 9, i32 0, i32 8, i32 1
  %145 = ptrtoint ptr %arrayidx117.i287 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %add.ptr113.i286, ptr %arrayidx117.i287, align 4
  %ul_mdm_len2.i288 = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 7, i32 18
  %146 = ptrtoint ptr %ul_mdm_len2.i288 to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %ul_mdm_len2.i288, align 2
  %conv119.i289 = zext i16 %147 to i32
  %sub120.i290 = add nsw i32 %conv119.i289, -4
  %arrayidx124.i291 = getelementptr %struct.nozomi, ptr %dc, i32 0, i32 9, i32 0, i32 9, i32 1
  %148 = ptrtoint ptr %arrayidx124.i291 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %sub120.i290, ptr %arrayidx124.i291, align 4
  %add.ptr128.i292 = getelementptr i8, ptr %add.ptr113.i286, i32 %conv119.i289
  %ul_addr131.i293 = getelementptr %struct.nozomi, ptr %dc, i32 0, i32 9, i32 1, i32 8
  %149 = ptrtoint ptr %ul_addr131.i293 to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %add.ptr128.i292, ptr %ul_addr131.i293, align 4
  %ul_diag_len.i294 = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 7, i32 17
  %150 = ptrtoint ptr %ul_diag_len.i294 to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %ul_diag_len.i294, align 4
  %conv134.i295 = zext i16 %151 to i32
  %sub135.i296 = add nsw i32 %conv134.i295, -4
  %ul_size138.i297 = getelementptr %struct.nozomi, ptr %dc, i32 0, i32 9, i32 1, i32 9
  %152 = ptrtoint ptr %ul_size138.i297 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %sub135.i296, ptr %ul_size138.i297, align 4
  %add.ptr143.i298 = getelementptr i8, ptr %add.ptr128.i292, i32 %conv134.i295
  %ul_addr146.i299 = getelementptr %struct.nozomi, ptr %dc, i32 0, i32 9, i32 2, i32 8
  %153 = ptrtoint ptr %ul_addr146.i299 to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %add.ptr143.i298, ptr %ul_addr146.i299, align 4
  %ul_app1_len.i300 = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 7, i32 19
  %154 = ptrtoint ptr %ul_app1_len.i300 to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %ul_app1_len.i300, align 4
  %conv149.i301 = zext i16 %155 to i32
  %sub150.i302 = add nsw i32 %conv149.i301, -4
  %ul_size153.i303 = getelementptr %struct.nozomi, ptr %dc, i32 0, i32 9, i32 2, i32 9
  %156 = ptrtoint ptr %ul_size153.i303 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %sub150.i302, ptr %ul_size153.i303, align 4
  %add.ptr158.i304 = getelementptr i8, ptr %add.ptr143.i298, i32 %conv149.i301
  %ul_addr161.i305 = getelementptr %struct.nozomi, ptr %dc, i32 0, i32 9, i32 3, i32 8
  %157 = ptrtoint ptr %ul_addr161.i305 to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr %add.ptr158.i304, ptr %ul_addr161.i305, align 4
  %ul_app2_len.i306 = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 7, i32 20
  %158 = ptrtoint ptr %ul_app2_len.i306 to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %ul_app2_len.i306, align 2
  %conv164.i307 = zext i16 %159 to i32
  %sub165.i308 = add nsw i32 %conv164.i307, -4
  %ul_size168.i309 = getelementptr %struct.nozomi, ptr %dc, i32 0, i32 9, i32 3, i32 9
  %160 = ptrtoint ptr %ul_size168.i309 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %sub165.i308, ptr %ul_size168.i309, align 4
  %add.ptr173.i310 = getelementptr i8, ptr %add.ptr158.i304, i32 %conv164.i307
  %ul_addr176.i311 = getelementptr %struct.nozomi, ptr %dc, i32 0, i32 9, i32 4, i32 8
  %161 = ptrtoint ptr %ul_addr176.i311 to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %add.ptr173.i310, ptr %ul_addr176.i311, align 4
  %ul_ctrl_len.i312 = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 7, i32 21
  %162 = ptrtoint ptr %ul_ctrl_len.i312 to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %ul_ctrl_len.i312, align 4
  %conv179.i313 = zext i16 %163 to i32
  %sub180.i314 = add nsw i32 %conv179.i313, -4
  %ul_size183.i315 = getelementptr %struct.nozomi, ptr %dc, i32 0, i32 9, i32 4, i32 9
  %164 = ptrtoint ptr %ul_size183.i315 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %sub180.i314, ptr %ul_size183.i315, align 4
  %tobool.not.i316 = icmp eq ptr %add.ptr100.i280, null
  br i1 %tobool.not.i316, label %do.end144.write_mem32.exit_crit_edge, label %if.end.i317, !prof !391

do.end144.write_mem32.exit_crit_edge:             ; preds = %do.end144
  call void @__sanitizer_cov_trace_pc() #14
  br label %write_mem32.exit

if.end.i317:                                      ; preds = %do.end144
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !436
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %add.ptr100.i280, i32 0) #12, !srcloc !437
  br label %write_mem32.exit

write_mem32.exit:                                 ; preds = %if.end.i317, %do.end144.write_mem32.exit_crit_edge
  %165 = ptrtoint ptr %arrayidx117.i287 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %arrayidx117.i287, align 4
  %tobool.not.i318 = icmp eq ptr %166, null
  br i1 %tobool.not.i318, label %write_mem32.exit.write_mem32.exit320_crit_edge, label %if.end.i319, !prof !391

write_mem32.exit.write_mem32.exit320_crit_edge:   ; preds = %write_mem32.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %write_mem32.exit320

if.end.i319:                                      ; preds = %write_mem32.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !436
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %166, i32 0) #12, !srcloc !437
  br label %write_mem32.exit320

write_mem32.exit320:                              ; preds = %if.end.i319, %write_mem32.exit.write_mem32.exit320_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !438
  tail call void @arm_heavy_mb() #12
  %reg_fcr = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 3
  %167 = ptrtoint ptr %reg_fcr to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %reg_fcr, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %168, i16 16128) #12, !srcloc !393
  %169 = load i32, ptr @debug, align 4
  %and163 = and i32 %169, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and163)
  %tobool164.not = icmp eq i32 %and163, 0
  br i1 %tobool164.not, label %write_mem32.exit320.return_crit_edge, label %do.body166

write_mem32.exit320.return_crit_edge:             ; preds = %write_mem32.exit320
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

do.body166:                                       ; preds = %write_mem32.exit320
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nozomi_read_config_table.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@nozomi_read_config_table, %return)) #12
          to label %if.then180 [label %return], !srcloc !395

if.then180:                                       ; preds = %do.body166
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nozomi_read_config_table.__UNIQUE_ID_ddebug262, ptr noundef nonnull @.str.74, i32 noundef 676, ptr noundef nonnull @.str.64) #12
  br label %return

return:                                           ; preds = %if.then180, %do.body166, %write_mem32.exit320.return_crit_edge, %do.end84, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ 1, %do.end84 ], [ 1, %if.then180 ], [ 1, %write_mem32.exit320.return_crit_edge ], [ 1, %do.body166 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @receive_flow_control(ptr noundef %dc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dl_addr = getelementptr %struct.nozomi, ptr %dc, i32 0, i32 9, i32 4, i32 5
  %0 = ptrtoint ptr %dl_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dl_addr, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.do.end26_crit_edge, label %read_mem32.exit, !prof !391

entry.do.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end26

read_mem32.exit:                                  ; preds = %entry
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %1) #12, !srcloc !400
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !439
  %ctrl_dl.sroa.0.0.extract.shift = lshr i16 %2, 8
  %ctrl_dl.sroa.0.0.extract.trunc = trunc i16 %ctrl_dl.sroa.0.0.extract.shift to i8
  %ctrl_dl.sroa.8.0.extract.trunc = trunc i16 %2 to i8
  %3 = zext i8 %ctrl_dl.sroa.0.0.extract.trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.158)
  switch i8 %ctrl_dl.sroa.0.0.extract.trunc, label %read_mem32.exit.do.end26_crit_edge [
    i8 0, label %do.body
    i8 1, label %read_mem32.exit.do.body29_crit_edge
    i8 2, label %sw.bb14
    i8 3, label %sw.bb15
    i8 4, label %sw.bb16
  ]

read_mem32.exit.do.body29_crit_edge:              ; preds = %read_mem32.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body29

read_mem32.exit.do.end26_crit_edge:               ; preds = %read_mem32.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end26

do.body:                                          ; preds = %read_mem32.exit
  %4 = load i32, ptr @debug, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.body29_crit_edge, label %do.body4

do.body.do.body29_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body29

do.body4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @receive_flow_control.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@receive_flow_control, %do.body29)) #12
          to label %if.then9 [label %do.body29], !srcloc !395

if.then9:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @receive_flow_control.__UNIQUE_ID_ddebug265, ptr noundef nonnull @.str.101, i32 noundef 883, ptr noundef nonnull @.str.100) #12
  br label %do.body29

sw.bb14:                                          ; preds = %read_mem32.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body29

sw.bb15:                                          ; preds = %read_mem32.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body29

sw.bb16:                                          ; preds = %read_mem32.exit
  %state = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 13
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp = icmp eq i32 %6, 2
  br i1 %cmp, label %if.then18, label %sw.bb16.do.body29_crit_edge

sw.bb16.do.body29_crit_edge:                      ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body29

if.then18:                                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 3, ptr %state, align 4
  %pdev = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 8
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.102) #15
  br label %do.body29

do.end26:                                         ; preds = %read_mem32.exit.do.end26_crit_edge, %entry.do.end26_crit_edge
  %pdev27 = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 8
  %10 = ptrtoint ptr %pdev27 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev27, align 4
  %dev28 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev28, ptr noundef nonnull @.str.104) #15
  br label %cleanup

do.body29:                                        ; preds = %if.then18, %sw.bb16.do.body29_crit_edge, %sw.bb15, %sw.bb14, %if.then9, %do.body4, %do.body.do.body29_crit_edge, %read_mem32.exit.do.body29_crit_edge
  %enable_ier.0 = phi i32 [ 512, %if.then18 ], [ 512, %sw.bb16.do.body29_crit_edge ], [ 128, %sw.bb15 ], [ 48, %sw.bb14 ], [ 0, %if.then9 ], [ 0, %do.body.do.body29_crit_edge ], [ 5, %read_mem32.exit.do.body29_crit_edge ], [ 0, %do.body4 ]
  %port.0 = phi i32 [ 3, %if.then18 ], [ 3, %sw.bb16.do.body29_crit_edge ], [ 2, %sw.bb15 ], [ 1, %sw.bb14 ], [ 0, %if.then9 ], [ 0, %do.body.do.body29_crit_edge ], [ 0, %read_mem32.exit.do.body29_crit_edge ], [ 0, %do.body4 ]
  %12 = load i32, ptr @debug, align 4
  %and30 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %do.body29.do.end58_crit_edge, label %do.body33

do.body29.do.end58_crit_edge:                     ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end58

do.body33:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @receive_flow_control.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@receive_flow_control, %do.end58)) #12
          to label %if.then47 [label %do.end58], !srcloc !395

if.then47:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #14
  %ctrl_dl50 = getelementptr %struct.nozomi, ptr %dc, i32 0, i32 9, i32 %port.0, i32 3
  %13 = ptrtoint ptr %ctrl_dl50 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %ctrl_dl50, align 1
  %conv51 = zext i16 %14 to i32
  %conv52 = zext i16 %2 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @receive_flow_control.__UNIQUE_ID_ddebug266, ptr noundef nonnull @.str.106, i32 noundef 916, ptr noundef nonnull @.str.100, i32 noundef %conv51, i32 noundef %conv52) #12
  br label %do.end58

do.end58:                                         ; preds = %if.then47, %do.body33, %do.body29.do.end58_crit_edge
  %ctrl_dl61 = getelementptr %struct.nozomi, ptr %dc, i32 0, i32 9, i32 %port.0, i32 3
  %15 = ptrtoint ptr %ctrl_dl61 to i32
  call void @__asan_load1_noabort(i32 %15)
  %old_ctrl.sroa.0.0.copyload = load i8, ptr %ctrl_dl61, align 1
  %old_ctrl.sroa.5.0.ctrl_dl61.sroa_idx = getelementptr inbounds i8, ptr %ctrl_dl61, i32 1
  %16 = ptrtoint ptr %old_ctrl.sroa.5.0.ctrl_dl61.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %16)
  %old_ctrl.sroa.5.0.copyload = load i8, ptr %old_ctrl.sroa.5.0.ctrl_dl61.sroa_idx, align 1
  store i16 %2, ptr %ctrl_dl61, align 1
  %bf.lshr = lshr i8 %old_ctrl.sroa.5.0.copyload, 3
  %bf.clear = and i8 %bf.lshr, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear)
  %cond = icmp eq i8 %bf.clear, 0
  %17 = and i8 %ctrl_dl.sroa.8.0.extract.trunc, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp114.not = icmp eq i8 %17, 0
  br i1 %cond, label %land.lhs.true108, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.end58
  br i1 %cmp114.not, label %do.body75, label %land.lhs.true.if.end209_crit_edge

land.lhs.true.if.end209_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end209

do.body75:                                        ; preds = %land.lhs.true
  %18 = load i32, ptr @debug, align 4
  %and76 = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %do.body75.do.end100_crit_edge, label %do.body79

do.body75.do.end100_crit_edge:                    ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end100

do.body79:                                        ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @receive_flow_control.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@receive_flow_control, %do.end100)) #12
          to label %if.then93 [label %do.end100], !srcloc !395

if.then93:                                        ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @receive_flow_control.__UNIQUE_ID_ddebug267, ptr noundef nonnull @.str.107, i32 noundef 923, ptr noundef nonnull @.str.100, i32 noundef %enable_ier.0, i32 noundef %port.0) #12
  br label %do.end100

do.end100:                                        ; preds = %if.then93, %do.body79, %do.body75.do.end100_crit_edge
  %arrayidx.i = getelementptr [5 x i16], ptr @disable_transmit_ul.mask, i32 0, i32 %port.0
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx.i, align 2
  %last_ier.i = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 5
  %21 = ptrtoint ptr %last_ier.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %last_ier.i, align 4
  %and10.i = and i16 %22, %20
  store i16 %and10.i, ptr %last_ier.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !440
  tail call void @arm_heavy_mb() #12
  %23 = ptrtoint ptr %last_ier.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %last_ier.i, align 4
  %25 = tail call i16 @llvm.bswap.i16(i16 %24) #12
  %reg_ier.i = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 4
  %26 = ptrtoint ptr %reg_ier.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg_ier.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %27, i16 %25) #12, !srcloc !393
  br label %if.end209

land.lhs.true108:                                 ; preds = %do.end58
  br i1 %cmp114.not, label %land.lhs.true108.if.end209_crit_edge, label %if.then116

land.lhs.true108.if.end209_crit_edge:             ; preds = %land.lhs.true108
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end209

if.then116:                                       ; preds = %land.lhs.true108
  %fifo_ul = getelementptr %struct.nozomi, ptr %dc, i32 0, i32 9, i32 %port.0, i32 4
  %28 = ptrtoint ptr %fifo_ul to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %fifo_ul, align 4
  %out = getelementptr inbounds %struct.__kfifo, ptr %fifo_ul, i32 0, i32 1
  %30 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %tobool120.not = icmp eq i32 %29, %31
  %32 = load i32, ptr @debug, align 4
  %and183 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and183)
  %tobool184.not = icmp eq i32 %and183, 0
  br i1 %tobool120.not, label %do.body182, label %do.body122

do.body122:                                       ; preds = %if.then116
  br i1 %tobool184.not, label %do.body122.do.body148_crit_edge, label %do.body126

do.body122.do.body148_crit_edge:                  ; preds = %do.body122
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body148

do.body126:                                       ; preds = %do.body122
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @receive_flow_control.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@receive_flow_control, %do.body148)) #12
          to label %if.then140 [label %do.body148], !srcloc !395

if.then140:                                       ; preds = %do.body126
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @receive_flow_control.__UNIQUE_ID_ddebug268, ptr noundef nonnull @.str.108, i32 noundef 930, ptr noundef nonnull @.str.100, i32 noundef %enable_ier.0, i32 noundef %port.0) #12
  br label %do.body148

do.body148:                                       ; preds = %if.then140, %do.body126, %do.body122.do.body148_crit_edge
  %33 = load i32, ptr @debug, align 4
  %and149 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and149)
  %tobool150.not = icmp eq i32 %and149, 0
  br i1 %tobool150.not, label %do.body148.do.end180_crit_edge, label %do.body152

do.body148.do.end180_crit_edge:                   ; preds = %do.body148
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end180

do.body152:                                       ; preds = %do.body148
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @receive_flow_control.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@receive_flow_control, %do.end180)) #12
          to label %if.then166 [label %do.end180], !srcloc !395

if.then166:                                       ; preds = %do.body152
  call void @__sanitizer_cov_trace_pc() #14
  %34 = ptrtoint ptr %fifo_ul to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %fifo_ul, align 4
  %36 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %out, align 4
  %sub174 = sub i32 %35, %37
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @receive_flow_control.__UNIQUE_ID_ddebug269, ptr noundef nonnull @.str.109, i32 noundef 932, ptr noundef nonnull @.str.100, i32 noundef %sub174) #12
  br label %do.end180

do.end180:                                        ; preds = %if.then166, %do.body152, %do.body148.do.end180_crit_edge
  %arrayidx.i24 = getelementptr [5 x i16], ptr @enable_transmit_ul.mask, i32 0, i32 %port.0
  %38 = ptrtoint ptr %arrayidx.i24 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %arrayidx.i24, align 2
  %last_ier.i25 = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 5
  %40 = ptrtoint ptr %last_ier.i25 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %last_ier.i25, align 4
  %or10.i = or i16 %41, %39
  store i16 %or10.i, ptr %last_ier.i25, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !441
  tail call void @arm_heavy_mb() #12
  %42 = ptrtoint ptr %last_ier.i25 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %last_ier.i25, align 4
  %44 = tail call i16 @llvm.bswap.i16(i16 %43) #12
  %reg_ier.i26 = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 4
  %45 = ptrtoint ptr %reg_ier.i26 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %reg_ier.i26, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %46, i16 %44) #12, !srcloc !393
  br label %if.end209

do.body182:                                       ; preds = %if.then116
  br i1 %tobool184.not, label %do.body182.if.end209_crit_edge, label %do.body186

do.body182.if.end209_crit_edge:                   ; preds = %do.body182
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end209

do.body186:                                       ; preds = %do.body182
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @receive_flow_control.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@receive_flow_control, %if.end209)) #12
          to label %if.then200 [label %if.end209], !srcloc !395

if.then200:                                       ; preds = %do.body186
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @receive_flow_control.__UNIQUE_ID_ddebug270, ptr noundef nonnull @.str.110, i32 noundef 935, ptr noundef nonnull @.str.100) #12
  br label %if.end209

if.end209:                                        ; preds = %if.then200, %do.body186, %do.body182.if.end209_crit_edge, %do.end180, %land.lhs.true108.if.end209_crit_edge, %do.end100, %land.lhs.true.if.end209_crit_edge
  %old_ctrl.sroa.5.0.insert.ext = zext i8 %old_ctrl.sroa.5.0.copyload to i32
  %old_ctrl.sroa.0.0.insert.ext = zext i8 %old_ctrl.sroa.0.0.copyload to i32
  %old_ctrl.sroa.0.0.insert.shift = shl nuw nsw i32 %old_ctrl.sroa.0.0.insert.ext, 8
  %old_ctrl.sroa.0.0.insert.insert = or i32 %old_ctrl.sroa.0.0.insert.shift, %old_ctrl.sroa.5.0.insert.ext
  %conv211 = zext i16 %2 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %old_ctrl.sroa.0.0.insert.insert, i32 %conv211)
  %cmp212 = icmp eq i32 %old_ctrl.sroa.0.0.insert.insert, %conv211
  br i1 %cmp212, label %do.body215, label %if.end240

do.body215:                                       ; preds = %if.end209
  %47 = load i32, ptr @debug, align 4
  %and216 = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and216)
  %tobool217.not = icmp eq i32 %and216, 0
  br i1 %tobool217.not, label %do.body215.cleanup_crit_edge, label %do.body219

do.body215.cleanup_crit_edge:                     ; preds = %do.body215
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body219:                                       ; preds = %do.body215
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @receive_flow_control.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@receive_flow_control, %cleanup)) #12
          to label %if.then233 [label %cleanup], !srcloc !395

if.then233:                                       ; preds = %do.body219
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @receive_flow_control.__UNIQUE_ID_ddebug271, ptr noundef nonnull @.str.111, i32 noundef 940, ptr noundef nonnull @.str.100) #12
  br label %cleanup

if.end240:                                        ; preds = %if.end209
  %bf.lshr248 = lshr i8 %ctrl_dl.sroa.8.0.extract.trunc, 3
  %bf.clear249 = and i8 %bf.lshr248, 1
  call void @__sanitizer_cov_trace_cmp1(i8 %bf.clear, i8 %bf.clear249)
  %cmp251.not = icmp eq i8 %bf.clear, %bf.clear249
  br i1 %cmp251.not, label %if.end240.if.end256_crit_edge, label %if.then253

if.end240.if.end256_crit_edge:                    ; preds = %if.end240
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end256

if.then253:                                       ; preds = %if.end240
  call void @__sanitizer_cov_trace_pc() #14
  %tty_icount = getelementptr %struct.nozomi, ptr %dc, i32 0, i32 9, i32 %port.0, i32 13
  %48 = ptrtoint ptr %tty_icount to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tty_icount, align 4
  %inc = add i32 %49, 1
  store i32 %inc, ptr %tty_icount, align 4
  br label %if.end256

if.end256:                                        ; preds = %if.then253, %if.end240.if.end256_crit_edge
  %50 = xor i8 %old_ctrl.sroa.5.0.copyload, %ctrl_dl.sroa.8.0.extract.trunc
  %51 = and i8 %50, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %cmp264.not = icmp eq i8 %51, 0
  br i1 %cmp264.not, label %if.end256.if.end271_crit_edge, label %if.then266

if.end256.if.end271_crit_edge:                    ; preds = %if.end256
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end271

if.then266:                                       ; preds = %if.end256
  call void @__sanitizer_cov_trace_pc() #14
  %dsr = getelementptr %struct.nozomi, ptr %dc, i32 0, i32 9, i32 %port.0, i32 13, i32 1
  %52 = ptrtoint ptr %dsr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %dsr, align 4
  %inc270 = add i32 %53, 1
  store i32 %inc270, ptr %dsr, align 4
  br label %if.end271

if.end271:                                        ; preds = %if.then266, %if.end256.if.end271_crit_edge
  %54 = and i8 %50, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %cmp281.not = icmp eq i8 %54, 0
  br i1 %cmp281.not, label %if.end271.if.end288_crit_edge, label %if.then283

if.end271.if.end288_crit_edge:                    ; preds = %if.end271
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end288

if.then283:                                       ; preds = %if.end271
  call void @__sanitizer_cov_trace_pc() #14
  %rng = getelementptr %struct.nozomi, ptr %dc, i32 0, i32 9, i32 %port.0, i32 13, i32 2
  %55 = ptrtoint ptr %rng to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rng, align 4
  %inc287 = add i32 %56, 1
  store i32 %inc287, ptr %rng, align 4
  br label %if.end288

if.end288:                                        ; preds = %if.then283, %if.end271.if.end288_crit_edge
  %57 = and i8 %50, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %cmp298.not = icmp eq i8 %57, 0
  br i1 %cmp298.not, label %if.end288.if.end305_crit_edge, label %if.then300

if.end288.if.end305_crit_edge:                    ; preds = %if.end288
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end305

if.then300:                                       ; preds = %if.end288
  call void @__sanitizer_cov_trace_pc() #14
  %dcd = getelementptr %struct.nozomi, ptr %dc, i32 0, i32 9, i32 %port.0, i32 13, i32 3
  %58 = ptrtoint ptr %dcd to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %dcd, align 4
  %inc304 = add i32 %59, 1
  store i32 %inc304, ptr %dcd, align 4
  br label %if.end305

if.end305:                                        ; preds = %if.then300, %if.end288.if.end305_crit_edge
  %tty_wait = getelementptr %struct.nozomi, ptr %dc, i32 0, i32 9, i32 %port.0, i32 12
  tail call void @__wake_up(ptr noundef %tty_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  %60 = load i32, ptr @debug, align 4
  %and309 = and i32 %60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and309)
  %tobool310.not = icmp eq i32 %and309, 0
  br i1 %tobool310.not, label %if.end305.cleanup_crit_edge, label %do.body312

if.end305.cleanup_crit_edge:                      ; preds = %if.end305
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body312:                                       ; preds = %if.end305
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @receive_flow_control.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@receive_flow_control, %cleanup)) #12
          to label %if.then326 [label %cleanup], !srcloc !395

if.then326:                                       ; preds = %do.body312
  call void @__sanitizer_cov_trace_pc() #14
  %tty_icount329 = getelementptr %struct.nozomi, ptr %dc, i32 0, i32 9, i32 %port.0, i32 13
  %dcd330 = getelementptr %struct.nozomi, ptr %dc, i32 0, i32 9, i32 %port.0, i32 13, i32 3
  %61 = ptrtoint ptr %dcd330 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %dcd330, align 4
  %63 = ptrtoint ptr %tty_icount329 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %tty_icount329, align 4
  %rng338 = getelementptr %struct.nozomi, ptr %dc, i32 0, i32 9, i32 %port.0, i32 13, i32 2
  %65 = ptrtoint ptr %rng338 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %rng338, align 4
  %dsr342 = getelementptr %struct.nozomi, ptr %dc, i32 0, i32 9, i32 %port.0, i32 13, i32 1
  %67 = ptrtoint ptr %dsr342 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %dsr342, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @receive_flow_control.__UNIQUE_ID_ddebug272, ptr noundef nonnull @.str.112, i32 noundef 958, ptr noundef nonnull @.str.100, i32 noundef %port.0, i32 noundef %62, i32 noundef %64, i32 noundef %66, i32 noundef %68) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then326, %do.body312, %if.end305.cleanup_crit_edge, %if.then233, %do.body219, %do.body215.cleanup_crit_edge, %do.end26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @handle_data_dl(ptr noundef %dc, i32 noundef %port, ptr nocapture noundef %toggle, i16 noundef zeroext %read_iir, i16 noundef zeroext %mask1, i16 noundef zeroext %mask2) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %toggle to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %toggle, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp ne i8 %1, 0
  %and100 = and i16 %mask1, %read_iir
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and100)
  %tobool.not = icmp eq i16 %and100, 0
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @receive_data(i32 noundef %port, ptr noundef %dc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.then.if.end_crit_edge, label %do.body

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !442
  tail call void @arm_heavy_mb() #12
  %2 = tail call i16 @llvm.bswap.i16(i16 %mask1)
  %reg_fcr = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 3
  %3 = ptrtoint ptr %reg_fcr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg_fcr, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %4, i16 %2) #12, !srcloc !393
  %5 = ptrtoint ptr %toggle to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %toggle, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool6.not = icmp eq i8 %6, 0
  %conv7 = zext i1 %tobool6.not to i8
  %7 = ptrtoint ptr %toggle to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv7, ptr %toggle, align 1
  br label %if.end

if.end:                                           ; preds = %do.body, %if.then.if.end_crit_edge
  %and10101 = and i16 %mask2, %read_iir
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and10101)
  %tobool11.not = icmp eq i16 %and10101, 0
  br i1 %tobool11.not, label %if.end.return_crit_edge, label %if.then12

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then12:                                        ; preds = %if.end
  %call13 = tail call fastcc i32 @receive_data(i32 noundef %port, ptr noundef %dc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then12.return_crit_edge, label %do.body16

if.then12.return_crit_edge:                       ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

do.body16:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !443
  tail call void @arm_heavy_mb() #12
  %8 = tail call i16 @llvm.bswap.i16(i16 %mask2)
  %reg_fcr18 = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 3
  %9 = ptrtoint ptr %reg_fcr18 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_fcr18, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %10, i16 %8) #12, !srcloc !393
  %11 = ptrtoint ptr %toggle to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %toggle, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool19.not = icmp eq i8 %12, 0
  %conv22 = zext i1 %tobool19.not to i8
  %13 = ptrtoint ptr %toggle to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv22, ptr %toggle, align 1
  br label %return

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp26 = icmp ne i8 %1, 1
  %and3198 = and i16 %mask2, %read_iir
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and3198)
  %tobool32.not = icmp eq i16 %and3198, 0
  %or.cond102 = or i1 %tobool32.not, %cmp26
  br i1 %or.cond102, label %do.end64, label %if.then33

if.then33:                                        ; preds = %if.else
  %call34 = tail call fastcc i32 @receive_data(i32 noundef %port, ptr noundef %dc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.then33.if.end44_crit_edge, label %do.body37

if.then33.if.end44_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

do.body37:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !444
  tail call void @arm_heavy_mb() #12
  %14 = tail call i16 @llvm.bswap.i16(i16 %mask2)
  %reg_fcr39 = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 3
  %15 = ptrtoint ptr %reg_fcr39 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg_fcr39, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %16, i16 %14) #12, !srcloc !393
  %17 = ptrtoint ptr %toggle to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %toggle, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool40.not = icmp eq i8 %18, 0
  %conv43 = zext i1 %tobool40.not to i8
  %19 = ptrtoint ptr %toggle to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv43, ptr %toggle, align 1
  br label %if.end44

if.end44:                                         ; preds = %do.body37, %if.then33.if.end44_crit_edge
  br i1 %tobool.not, label %if.end44.return_crit_edge, label %if.then49

if.end44.return_crit_edge:                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then49:                                        ; preds = %if.end44
  %call50 = tail call fastcc i32 @receive_data(i32 noundef %port, ptr noundef %dc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.then49.return_crit_edge, label %do.body53

if.then49.return_crit_edge:                       ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

do.body53:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !445
  tail call void @arm_heavy_mb() #12
  %20 = tail call i16 @llvm.bswap.i16(i16 %mask1)
  %reg_fcr55 = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 3
  %21 = ptrtoint ptr %reg_fcr55 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg_fcr55, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %22, i16 %20) #12, !srcloc !393
  %23 = ptrtoint ptr %toggle to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %toggle, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool56.not = icmp eq i8 %24, 0
  %conv59 = zext i1 %tobool56.not to i8
  %25 = ptrtoint ptr %toggle to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv59, ptr %toggle, align 1
  br label %return

do.end64:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %pdev = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 8
  %26 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  %conv65 = zext i8 %1 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.116, i32 noundef %conv65) #15
  br label %return

return:                                           ; preds = %do.end64, %do.body53, %if.then49.return_crit_edge, %if.end44.return_crit_edge, %do.body16, %if.then12.return_crit_edge, %if.end.return_crit_edge
  %retval.0 = phi i32 [ 0, %do.end64 ], [ 1, %if.then49.return_crit_edge ], [ 1, %do.body53 ], [ 1, %if.end44.return_crit_edge ], [ 1, %if.end.return_crit_edge ], [ 1, %do.body16 ], [ 1, %if.then12.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @send_data(i32 noundef %index, ptr noundef %dc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.nozomi, ptr %dc, i32 0, i32 9, i32 %index
  %toggle_ul = getelementptr %struct.nozomi, ptr %dc, i32 0, i32 9, i32 %index, i32 10
  %0 = ptrtoint ptr %toggle_ul to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %toggle_ul, align 4
  %idxprom = zext i8 %1 to i32
  %arrayidx2 = getelementptr %struct.nozomi, ptr %dc, i32 0, i32 9, i32 %index, i32 8, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx2, align 4
  %arrayidx5 = getelementptr %struct.nozomi, ptr %dc, i32 0, i32 9, i32 %index, i32 9, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx5, align 4
  %fifo_ul = getelementptr %struct.nozomi, ptr %dc, i32 0, i32 9, i32 %index, i32 4
  %send_buf = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 10
  %6 = ptrtoint ptr %send_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %send_buf, align 4
  %8 = tail call i32 @llvm.umin.i32(i32 %5, i32 1024)
  %call = tail call i32 @__kfifo_out(ptr noundef %fifo_ul, ptr noundef %7, i32 noundef %8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp7 = icmp eq i32 %call, 0
  br i1 %cmp7, label %do.body, label %if.end20

do.body:                                          ; preds = %entry
  %9 = load i32, ptr @debug, align 4
  %and = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.body9

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @send_data.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@send_data, %cleanup)) #12
          to label %if.then16 [label %cleanup], !srcloc !395

if.then16:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @send_data.__UNIQUE_ID_ddebug263, ptr noundef nonnull @.str.121, i32 noundef 753, ptr noundef nonnull @.str.120) #12
  br label %cleanup

if.end20:                                         ; preds = %entry
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end20.write_mem32.exit_crit_edge, label %if.end.i, !prof !391

if.end20.write_mem32.exit_crit_edge:              ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %write_mem32.exit

if.end.i:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !436
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %3, i32 %call) #12, !srcloc !437
  br label %write_mem32.exit

write_mem32.exit:                                 ; preds = %if.end.i, %if.end20.write_mem32.exit_crit_edge
  %add.ptr = getelementptr i8, ptr %3, i32 4
  %10 = ptrtoint ptr %send_buf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %send_buf, align 4
  %tobool.not.i38 = icmp eq ptr %add.ptr, null
  %tobool1.not.i = icmp eq ptr %11, null
  %spec.select.i = or i1 %tobool.not.i38, %tobool1.not.i
  br i1 %spec.select.i, label %write_mem32.exit.write_mem32.exit40_crit_edge, label %if.end.i39, !prof !391

write_mem32.exit.write_mem32.exit40_crit_edge:    ; preds = %write_mem32.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %write_mem32.exit40

if.end.i39:                                       ; preds = %write_mem32.exit
  %12 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.159)
  switch i32 %call, label %if.end.i39.while.body.i_crit_edge [
    i32 2, label %sw.bb.i
    i32 1, label %if.end.i39.do.body7.i_crit_edge
    i32 4, label %if.end.i39.do.body7.i_crit_edge43
  ]

if.end.i39.do.body7.i_crit_edge43:                ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body7.i

if.end.i39.do.body7.i_crit_edge:                  ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body7.i

if.end.i39.while.body.i_crit_edge:                ; preds = %if.end.i39
  br label %while.body.i

sw.bb.i:                                          ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  tail call void @arm_heavy_mb() #12
  %13 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %11, align 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %add.ptr, i16 %14) #12, !srcloc !393
  br label %write_mem32.exit40

do.body7.i:                                       ; preds = %if.end.i39.do.body7.i_crit_edge, %if.end.i39.do.body7.i_crit_edge43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !436
  tail call void @arm_heavy_mb() #12
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %11, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %add.ptr, i32 %16) #12, !srcloc !437
  br label %write_mem32.exit40

while.body.i:                                     ; preds = %if.end19.i.while.body.i_crit_edge, %if.end.i39.while.body.i_crit_edge
  %ptr.05.i = phi ptr [ %incdec.ptr20.i, %if.end19.i.while.body.i_crit_edge ], [ %add.ptr, %if.end.i39.while.body.i_crit_edge ]
  %i.04.i = phi i32 [ %add18.i, %if.end19.i.while.body.i_crit_edge ], [ 0, %if.end.i39.while.body.i_crit_edge ]
  %buf.addr.02.i = phi ptr [ %incdec.ptr.i, %if.end19.i.while.body.i_crit_edge ], [ %11, %if.end.i39.while.body.i_crit_edge ]
  %sub.i = sub i32 %call, %i.04.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.i)
  %cmp10.i = icmp eq i32 %sub.i, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  tail call void @arm_heavy_mb() #12
  br i1 %cmp10.i, label %if.then11.i, label %do.body15.i

if.then11.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %buf.addr.02.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %buf.addr.02.i, align 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %ptr.05.i, i16 %18) #12, !srcloc !393
  br label %if.end19.i

do.body15.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %buf.addr.02.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %buf.addr.02.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ptr.05.i, i32 %20) #12, !srcloc !437
  br label %if.end19.i

if.end19.i:                                       ; preds = %do.body15.i, %if.then11.i
  %.sink.i = phi i32 [ 4, %do.body15.i ], [ 2, %if.then11.i ]
  %add18.i = add i32 %.sink.i, %i.04.i
  %incdec.ptr.i = getelementptr i32, ptr %buf.addr.02.i, i32 1
  %incdec.ptr20.i = getelementptr i32, ptr %ptr.05.i, i32 1
  %cmp.i = icmp ult i32 %add18.i, %call
  br i1 %cmp.i, label %if.end19.i.while.body.i_crit_edge, label %if.end19.i.write_mem32.exit40_crit_edge

if.end19.i.write_mem32.exit40_crit_edge:          ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %write_mem32.exit40

if.end19.i.while.body.i_crit_edge:                ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

write_mem32.exit40:                               ; preds = %if.end19.i.write_mem32.exit40_crit_edge, %do.body7.i, %sw.bb.i, %write_mem32.exit.write_mem32.exit40_crit_edge
  tail call void @tty_port_tty_wakeup(ptr noundef %arrayidx) #12
  br label %cleanup

cleanup:                                          ; preds = %write_mem32.exit40, %if.then16, %do.body9, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %write_mem32.exit40 ], [ 0, %if.then16 ], [ 0, %do.body.cleanup_crit_edge ], [ 0, %do.body9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @receive_data(i32 noundef %index, ptr noundef %dc) unnamed_addr #2 align 64 {
entry:
  %buf = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #12
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %buf, align 4
  %arrayidx = getelementptr %struct.nozomi, ptr %dc, i32 0, i32 9, i32 %index
  %toggle_dl = getelementptr %struct.nozomi, ptr %dc, i32 0, i32 9, i32 %index, i32 7
  %1 = ptrtoint ptr %toggle_dl to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %toggle_dl, align 4
  %idxprom = zext i8 %2 to i32
  %arrayidx2 = getelementptr %struct.nozomi, ptr %dc, i32 0, i32 9, i32 %index, i32 5, i32 %idxprom
  %3 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx2, align 4
  %call = tail call ptr @tty_port_tty_get(ptr noundef %arrayidx) #12
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #12, !srcloc !433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !446
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end20_crit_edge, label %land.lhs.true

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

land.lhs.true:                                    ; preds = %entry
  %flags.i = getelementptr inbounds %struct.tty_struct, ptr %call, i32 0, i32 16
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %land.lhs.true.if.end20_crit_edge, label %do.body

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

do.body:                                          ; preds = %land.lhs.true
  %8 = load i32, ptr @debug, align 4
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %do.body.do.end19_crit_edge, label %do.body9

do.body.do.end19_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end19

do.body9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @receive_data.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@receive_data, %do.end19)) #12
          to label %if.then16 [label %do.end19], !srcloc !395

if.then16:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @receive_data.__UNIQUE_ID_ddebug264, ptr noundef nonnull @.str.123, i32 noundef 783, ptr noundef nonnull @.str.122) #12
  br label %do.end19

do.end19:                                         ; preds = %if.then16, %do.body9, %do.body.do.end19_crit_edge
  %arrayidx.i = getelementptr [5 x i16], ptr @disable_transmit_dl.mask, i32 0, i32 %index
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx.i, align 2
  %last_ier.i = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 5
  %11 = ptrtoint ptr %last_ier.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %last_ier.i, align 4
  %and10.i = and i16 %12, %10
  store i16 %and10.i, ptr %last_ier.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !447
  tail call void @arm_heavy_mb() #12
  %13 = ptrtoint ptr %last_ier.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %last_ier.i, align 4
  %15 = tail call i16 @llvm.bswap.i16(i16 %14) #12
  %reg_ier.i = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 4
  %16 = ptrtoint ptr %reg_ier.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg_ier.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %17, i16 %15) #12, !srcloc !393
  br label %put

if.end20:                                         ; preds = %land.lhs.true.if.end20_crit_edge, %entry.if.end20_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %do.end30, label %while.cond.preheader, !prof !391

while.cond.preheader:                             ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp3275 = icmp sgt i32 %5, 0
  br i1 %cmp3275, label %while.body.lr.ph, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %tail.i = getelementptr inbounds %struct.tty_bufhead, ptr %arrayidx, i32 0, i32 8
  br label %while.body

do.end30:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  %pdev = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 8
  %18 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.124) #15
  br label %put

while.body:                                       ; preds = %if.end49.while.body_crit_edge, %while.body.lr.ph
  %size.077 = phi i32 [ %5, %while.body.lr.ph ], [ %size.1, %if.end49.while.body_crit_edge ]
  %offset.076 = phi i32 [ 4, %while.body.lr.ph ], [ %offset.1, %if.end49.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %4, i32 %offset.076
  %tobool.not.i = icmp eq ptr %add.ptr, null
  br i1 %tobool.not.i, label %while.body.read_mem32.exit_crit_edge, label %if.end.i, !prof !391

while.body.read_mem32.exit_crit_edge:             ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %read_mem32.exit

if.end.i:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %20 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %add.ptr) #12, !srcloc !433
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !448
  %21 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %buf, align 4
  br label %read_mem32.exit

read_mem32.exit:                                  ; preds = %if.end.i, %while.body.read_mem32.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %size.077)
  %cmp33 = icmp eq i32 %size.077, 1
  br i1 %cmp33, label %if.then34, label %if.else

if.then34:                                        ; preds = %read_mem32.exit
  %22 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %buf, align 4
  %24 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tail.i, align 4
  %used.i = getelementptr inbounds %struct.tty_buffer, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %used.i, align 4
  %size.i = getelementptr inbounds %struct.tty_buffer, ptr %25, i32 0, i32 2
  %28 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp3.i = icmp slt i32 %27, %29
  br i1 %cmp3.i, label %if.then.i, label %if.end12.i

if.then.i:                                        ; preds = %if.then34
  %flags.i71 = getelementptr inbounds %struct.tty_buffer, ptr %25, i32 0, i32 5
  %30 = ptrtoint ptr %flags.i71 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags.i71, align 4
  %and.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool7.not.not.i, label %if.then8.i, label %if.then.i.if.end.i72_crit_edge

if.then.i.if.end.i72_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i72

if.then8.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %data.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %25, i32 0, i32 6
  %add.ptr.i.i.i = getelementptr i8, ptr %data.i.i.i, i32 %27
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %29
  %32 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %add.ptr.i.i, align 1
  br label %if.end.i72

if.end.i72:                                       ; preds = %if.then8.i, %if.then.i.if.end.i72_crit_edge
  %33 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %used.i, align 4
  %inc.i = add i32 %34, 1
  store i32 %inc.i, ptr %used.i, align 4
  %data.i.i = getelementptr inbounds %struct.tty_buffer, ptr %25, i32 0, i32 6
  %add.ptr.i1.i = getelementptr i8, ptr %data.i.i, i32 %34
  %35 = ptrtoint ptr %add.ptr.i1.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %23, ptr %add.ptr.i1.i, align 1
  br label %while.end

if.end12.i:                                       ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #14
  %call13.i = call i32 @__tty_insert_flip_char(ptr noundef %arrayidx, i8 noundef zeroext %23, i8 noundef zeroext 0) #12
  br label %while.end

if.else:                                          ; preds = %read_mem32.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %size.077)
  %cmp38 = icmp slt i32 %size.077, 4
  br i1 %cmp38, label %if.then39, label %if.else43

if.then39:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %arrayidx, ptr noundef nonnull %buf, i8 noundef zeroext 0, i32 noundef %size.077) #12
  br label %if.end49

if.else43:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %call.i73 = call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %arrayidx, ptr noundef nonnull %buf, i8 noundef zeroext 0, i32 noundef 4) #12
  %add = add i32 %call.i73, %offset.076
  br label %if.end49

if.end49:                                         ; preds = %if.else43, %if.then39
  %offset.1 = phi i32 [ %offset.076, %if.then39 ], [ %add, %if.else43 ]
  %call.i.pn = phi i32 [ %call.i, %if.then39 ], [ %call.i73, %if.else43 ]
  %size.1 = sub i32 %size.077, %call.i.pn
  %cmp32 = icmp sgt i32 %size.1, 0
  br i1 %cmp32, label %if.end49.while.body_crit_edge, label %if.end49.while.end_crit_edge

if.end49.while.end_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.end49.while.body_crit_edge:                    ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.end:                                        ; preds = %if.end49.while.end_crit_edge, %if.end12.i, %if.end.i72, %while.cond.preheader.while.end_crit_edge
  %flip = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 1
  call void @_set_bit(i32 noundef %index, ptr noundef %flip) #12
  br label %put

put:                                              ; preds = %while.end, %do.end30, %do.end19
  %ret.0 = phi i32 [ 0, %do.end19 ], [ 1, %do.end30 ], [ 1, %while.end ]
  call void @tty_kref_put(ptr noundef %call) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #12
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dump_table(ptr noundef readonly %dc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  %and = and i32 %0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body9_crit_edge, label %do.body1

entry.do.body9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body9

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_table.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dump_table, %do.body9)) #12
          to label %if.then6 [label %do.body9], !srcloc !395

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #14
  %config_table = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 7
  %1 = ptrtoint ptr %config_table to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %config_table, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dump_table.__UNIQUE_ID_ddebug237, ptr noundef nonnull @.str.76, i32 noundef 564, ptr noundef nonnull @.str.75, i32 noundef %2) #12
  br label %do.body9

do.body9:                                         ; preds = %if.then6, %do.body1, %entry.do.body9_crit_edge
  %3 = load i32, ptr @debug, align 4
  %and10 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %do.body9.do.body33_crit_edge, label %do.body13

do.body9.do.body33_crit_edge:                     ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body33

do.body13:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_table.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dump_table, %do.body33)) #12
          to label %if.then27 [label %do.body33], !srcloc !395

if.then27:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #14
  %version = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 7, i32 2
  %4 = ptrtoint ptr %version to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %version, align 2
  %conv = zext i16 %5 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dump_table.__UNIQUE_ID_ddebug238, ptr noundef nonnull @.str.77, i32 noundef 565, ptr noundef nonnull @.str.75, i32 noundef %conv) #12
  br label %do.body33

do.body33:                                        ; preds = %if.then27, %do.body13, %do.body9.do.body33_crit_edge
  %6 = load i32, ptr @debug, align 4
  %and34 = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %do.body33.do.body58_crit_edge, label %do.body37

do.body33.do.body58_crit_edge:                    ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body58

do.body37:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_table.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dump_table, %do.body58)) #12
          to label %if.then51 [label %do.body58], !srcloc !395

if.then51:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #14
  %product_information = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 7, i32 1
  %7 = ptrtoint ptr %product_information to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %product_information, align 4
  %conv53 = zext i16 %8 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dump_table.__UNIQUE_ID_ddebug239, ptr noundef nonnull @.str.78, i32 noundef 567, ptr noundef nonnull @.str.75, i32 noundef %conv53) #12
  br label %do.body58

do.body58:                                        ; preds = %if.then51, %do.body37, %do.body33.do.body58_crit_edge
  %9 = load i32, ptr @debug, align 4
  %and59 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %do.body58.do.body82_crit_edge, label %do.body62

do.body58.do.body82_crit_edge:                    ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body82

do.body62:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_table.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dump_table, %do.body82)) #12
          to label %if.then76 [label %do.body82], !srcloc !395

if.then76:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #14
  %toggle = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 7, i32 4
  %10 = ptrtoint ptr %toggle to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %toggle, align 1
  %bf.lshr = lshr i8 %bf.load, 3
  %bf.cast = zext i8 %bf.lshr to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dump_table.__UNIQUE_ID_ddebug240, ptr noundef nonnull @.str.79, i32 noundef 568, ptr noundef nonnull @.str.75, i32 noundef %bf.cast) #12
  br label %do.body82

do.body82:                                        ; preds = %if.then76, %do.body62, %do.body58.do.body82_crit_edge
  %11 = load i32, ptr @debug, align 4
  %and83 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %do.body82.do.body109_crit_edge, label %do.body86

do.body82.do.body109_crit_edge:                   ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body109

do.body86:                                        ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_table.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dump_table, %do.body109)) #12
          to label %if.then100 [label %do.body109], !srcloc !395

if.then100:                                       ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #14
  %toggle102 = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 7, i32 4
  %12 = ptrtoint ptr %toggle102 to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load103 = load i8, ptr %toggle102, align 1
  %bf.clear = and i8 %bf.load103, 1
  %bf.cast104 = zext i8 %bf.clear to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dump_table.__UNIQUE_ID_ddebug241, ptr noundef nonnull @.str.80, i32 noundef 569, ptr noundef nonnull @.str.75, i32 noundef %bf.cast104) #12
  br label %do.body109

do.body109:                                       ; preds = %if.then100, %do.body86, %do.body82.do.body109_crit_edge
  %13 = load i32, ptr @debug, align 4
  %and110 = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110)
  %tobool111.not = icmp eq i32 %and110, 0
  br i1 %tobool111.not, label %do.body109.do.body138_crit_edge, label %do.body113

do.body109.do.body138_crit_edge:                  ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body138

do.body113:                                       ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_table.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dump_table, %do.body138)) #12
          to label %if.then127 [label %do.body138], !srcloc !395

if.then127:                                       ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #14
  %toggle129 = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 7, i32 4
  %14 = ptrtoint ptr %toggle129 to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load130 = load i8, ptr %toggle129, align 1
  %bf.lshr131 = lshr i8 %bf.load130, 1
  %bf.clear132 = and i8 %bf.lshr131, 1
  %bf.cast133 = zext i8 %bf.clear132 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dump_table.__UNIQUE_ID_ddebug242, ptr noundef nonnull @.str.81, i32 noundef 570, ptr noundef nonnull @.str.75, i32 noundef %bf.cast133) #12
  br label %do.body138

do.body138:                                       ; preds = %if.then127, %do.body113, %do.body109.do.body138_crit_edge
  %15 = load i32, ptr @debug, align 4
  %and139 = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and139)
  %tobool140.not = icmp eq i32 %and139, 0
  br i1 %tobool140.not, label %do.body138.do.body167_crit_edge, label %do.body142

do.body138.do.body167_crit_edge:                  ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body167

do.body142:                                       ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_table.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dump_table, %do.body167)) #12
          to label %if.then156 [label %do.body167], !srcloc !395

if.then156:                                       ; preds = %do.body142
  call void @__sanitizer_cov_trace_pc() #14
  %toggle158 = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 7, i32 4
  %16 = ptrtoint ptr %toggle158 to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load159 = load i8, ptr %toggle158, align 1
  %bf.lshr160 = lshr i8 %bf.load159, 2
  %bf.clear161 = and i8 %bf.lshr160, 1
  %bf.cast162 = zext i8 %bf.clear161 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dump_table.__UNIQUE_ID_ddebug243, ptr noundef nonnull @.str.82, i32 noundef 571, ptr noundef nonnull @.str.75, i32 noundef %bf.cast162) #12
  br label %do.body167

do.body167:                                       ; preds = %if.then156, %do.body142, %do.body138.do.body167_crit_edge
  %17 = load i32, ptr @debug, align 4
  %and168 = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and168)
  %tobool169.not = icmp eq i32 %and168, 0
  br i1 %tobool169.not, label %do.body167.do.body192_crit_edge, label %do.body171

do.body167.do.body192_crit_edge:                  ; preds = %do.body167
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body192

do.body171:                                       ; preds = %do.body167
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_table.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dump_table, %do.body192)) #12
          to label %if.then185 [label %do.body192], !srcloc !395

if.then185:                                       ; preds = %do.body171
  call void @__sanitizer_cov_trace_pc() #14
  %dl_start = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 7, i32 7
  %18 = ptrtoint ptr %dl_start to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %dl_start, align 2
  %conv187 = zext i16 %19 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dump_table.__UNIQUE_ID_ddebug244, ptr noundef nonnull @.str.83, i32 noundef 573, ptr noundef nonnull @.str.75, i32 noundef %conv187) #12
  br label %do.body192

do.body192:                                       ; preds = %if.then185, %do.body171, %do.body167.do.body192_crit_edge
  %20 = load i32, ptr @debug, align 4
  %and193 = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and193)
  %tobool194.not = icmp eq i32 %and193, 0
  br i1 %tobool194.not, label %do.body192.do.body220_crit_edge, label %do.body196

do.body192.do.body220_crit_edge:                  ; preds = %do.body192
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body220

do.body196:                                       ; preds = %do.body192
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_table.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dump_table, %do.body220)) #12
          to label %if.then210 [label %do.body220], !srcloc !395

if.then210:                                       ; preds = %do.body196
  call void @__sanitizer_cov_trace_pc() #14
  %dl_mdm_len1 = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 7, i32 6
  %21 = ptrtoint ptr %dl_mdm_len1 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %dl_mdm_len1, align 4
  %conv212 = zext i16 %22 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dump_table.__UNIQUE_ID_ddebug245, ptr noundef nonnull @.str.84, i32 noundef 575, ptr noundef nonnull @.str.75, i32 noundef %conv212, i32 noundef %conv212) #12
  br label %do.body220

do.body220:                                       ; preds = %if.then210, %do.body196, %do.body192.do.body220_crit_edge
  %23 = load i32, ptr @debug, align 4
  %and221 = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and221)
  %tobool222.not = icmp eq i32 %and221, 0
  br i1 %tobool222.not, label %do.body220.do.body248_crit_edge, label %do.body224

do.body220.do.body248_crit_edge:                  ; preds = %do.body220
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body248

do.body224:                                       ; preds = %do.body220
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_table.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dump_table, %do.body248)) #12
          to label %if.then238 [label %do.body248], !srcloc !395

if.then238:                                       ; preds = %do.body224
  call void @__sanitizer_cov_trace_pc() #14
  %dl_mdm_len2 = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 7, i32 9
  %24 = ptrtoint ptr %dl_mdm_len2 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %dl_mdm_len2, align 2
  %conv240 = zext i16 %25 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dump_table.__UNIQUE_ID_ddebug246, ptr noundef nonnull @.str.85, i32 noundef 577, ptr noundef nonnull @.str.75, i32 noundef %conv240, i32 noundef %conv240) #12
  br label %do.body248

do.body248:                                       ; preds = %if.then238, %do.body224, %do.body220.do.body248_crit_edge
  %26 = load i32, ptr @debug, align 4
  %and249 = and i32 %26, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and249)
  %tobool250.not = icmp eq i32 %and249, 0
  br i1 %tobool250.not, label %do.body248.do.body276_crit_edge, label %do.body252

do.body248.do.body276_crit_edge:                  ; preds = %do.body248
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body276

do.body252:                                       ; preds = %do.body248
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_table.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dump_table, %do.body276)) #12
          to label %if.then266 [label %do.body276], !srcloc !395

if.then266:                                       ; preds = %do.body252
  call void @__sanitizer_cov_trace_pc() #14
  %dl_diag_len1 = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 7, i32 8
  %27 = ptrtoint ptr %dl_diag_len1 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %dl_diag_len1, align 4
  %conv268 = zext i16 %28 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dump_table.__UNIQUE_ID_ddebug247, ptr noundef nonnull @.str.86, i32 noundef 579, ptr noundef nonnull @.str.75, i32 noundef %conv268, i32 noundef %conv268) #12
  br label %do.body276

do.body276:                                       ; preds = %if.then266, %do.body252, %do.body248.do.body276_crit_edge
  %29 = load i32, ptr @debug, align 4
  %and277 = and i32 %29, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and277)
  %tobool278.not = icmp eq i32 %and277, 0
  br i1 %tobool278.not, label %do.body276.do.body304_crit_edge, label %do.body280

do.body276.do.body304_crit_edge:                  ; preds = %do.body276
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body304

do.body280:                                       ; preds = %do.body276
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_table.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dump_table, %do.body304)) #12
          to label %if.then294 [label %do.body304], !srcloc !395

if.then294:                                       ; preds = %do.body280
  call void @__sanitizer_cov_trace_pc() #14
  %dl_diag_len2 = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 7, i32 11
  %30 = ptrtoint ptr %dl_diag_len2 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %dl_diag_len2, align 2
  %conv296 = zext i16 %31 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dump_table.__UNIQUE_ID_ddebug248, ptr noundef nonnull @.str.87, i32 noundef 581, ptr noundef nonnull @.str.75, i32 noundef %conv296, i32 noundef %conv296) #12
  br label %do.body304

do.body304:                                       ; preds = %if.then294, %do.body280, %do.body276.do.body304_crit_edge
  %32 = load i32, ptr @debug, align 4
  %and305 = and i32 %32, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and305)
  %tobool306.not = icmp eq i32 %and305, 0
  br i1 %tobool306.not, label %do.body304.do.body332_crit_edge, label %do.body308

do.body304.do.body332_crit_edge:                  ; preds = %do.body304
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body332

do.body308:                                       ; preds = %do.body304
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_table.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dump_table, %do.body332)) #12
          to label %if.then322 [label %do.body332], !srcloc !395

if.then322:                                       ; preds = %do.body308
  call void @__sanitizer_cov_trace_pc() #14
  %dl_app1_len = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 7, i32 10
  %33 = ptrtoint ptr %dl_app1_len to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %dl_app1_len, align 4
  %conv324 = zext i16 %34 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dump_table.__UNIQUE_ID_ddebug249, ptr noundef nonnull @.str.88, i32 noundef 583, ptr noundef nonnull @.str.75, i32 noundef %conv324, i32 noundef %conv324) #12
  br label %do.body332

do.body332:                                       ; preds = %if.then322, %do.body308, %do.body304.do.body332_crit_edge
  %35 = load i32, ptr @debug, align 4
  %and333 = and i32 %35, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and333)
  %tobool334.not = icmp eq i32 %and333, 0
  br i1 %tobool334.not, label %do.body332.do.body360_crit_edge, label %do.body336

do.body332.do.body360_crit_edge:                  ; preds = %do.body332
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body360

do.body336:                                       ; preds = %do.body332
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_table.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dump_table, %do.body360)) #12
          to label %if.then350 [label %do.body360], !srcloc !395

if.then350:                                       ; preds = %do.body336
  call void @__sanitizer_cov_trace_pc() #14
  %dl_app2_len = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 7, i32 13
  %36 = ptrtoint ptr %dl_app2_len to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %dl_app2_len, align 2
  %conv352 = zext i16 %37 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dump_table.__UNIQUE_ID_ddebug250, ptr noundef nonnull @.str.89, i32 noundef 585, ptr noundef nonnull @.str.75, i32 noundef %conv352, i32 noundef %conv352) #12
  br label %do.body360

do.body360:                                       ; preds = %if.then350, %do.body336, %do.body332.do.body360_crit_edge
  %38 = load i32, ptr @debug, align 4
  %and361 = and i32 %38, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and361)
  %tobool362.not = icmp eq i32 %and361, 0
  br i1 %tobool362.not, label %do.body360.do.body388_crit_edge, label %do.body364

do.body360.do.body388_crit_edge:                  ; preds = %do.body360
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body388

do.body364:                                       ; preds = %do.body360
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_table.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dump_table, %do.body388)) #12
          to label %if.then378 [label %do.body388], !srcloc !395

if.then378:                                       ; preds = %do.body364
  call void @__sanitizer_cov_trace_pc() #14
  %dl_ctrl_len = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 7, i32 12
  %39 = ptrtoint ptr %dl_ctrl_len to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %dl_ctrl_len, align 4
  %conv380 = zext i16 %40 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dump_table.__UNIQUE_ID_ddebug251, ptr noundef nonnull @.str.90, i32 noundef 587, ptr noundef nonnull @.str.75, i32 noundef %conv380, i32 noundef %conv380) #12
  br label %do.body388

do.body388:                                       ; preds = %if.then378, %do.body364, %do.body360.do.body388_crit_edge
  %41 = load i32, ptr @debug, align 4
  %and389 = and i32 %41, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and389)
  %tobool390.not = icmp eq i32 %and389, 0
  br i1 %tobool390.not, label %do.body388.do.body416_crit_edge, label %do.body392

do.body388.do.body416_crit_edge:                  ; preds = %do.body388
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body416

do.body392:                                       ; preds = %do.body388
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_table.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dump_table, %do.body416)) #12
          to label %if.then406 [label %do.body416], !srcloc !395

if.then406:                                       ; preds = %do.body392
  call void @__sanitizer_cov_trace_pc() #14
  %ul_start = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 7, i32 16
  %42 = ptrtoint ptr %ul_start to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %ul_start, align 2
  %conv408 = zext i16 %43 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dump_table.__UNIQUE_ID_ddebug252, ptr noundef nonnull @.str.91, i32 noundef 589, ptr noundef nonnull @.str.75, i32 noundef %conv408, i32 noundef %conv408) #12
  br label %do.body416

do.body416:                                       ; preds = %if.then406, %do.body392, %do.body388.do.body416_crit_edge
  %44 = load i32, ptr @debug, align 4
  %and417 = and i32 %44, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and417)
  %tobool418.not = icmp eq i32 %and417, 0
  br i1 %tobool418.not, label %do.body416.do.body444_crit_edge, label %do.body420

do.body416.do.body444_crit_edge:                  ; preds = %do.body416
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body444

do.body420:                                       ; preds = %do.body416
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_table.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dump_table, %do.body444)) #12
          to label %if.then434 [label %do.body444], !srcloc !395

if.then434:                                       ; preds = %do.body420
  call void @__sanitizer_cov_trace_pc() #14
  %ul_mdm_len1 = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 7, i32 15
  %45 = ptrtoint ptr %ul_mdm_len1 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %ul_mdm_len1, align 4
  %conv436 = zext i16 %46 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dump_table.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.92, i32 noundef 591, ptr noundef nonnull @.str.75, i32 noundef %conv436, i32 noundef %conv436) #12
  br label %do.body444

do.body444:                                       ; preds = %if.then434, %do.body420, %do.body416.do.body444_crit_edge
  %47 = load i32, ptr @debug, align 4
  %and445 = and i32 %47, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and445)
  %tobool446.not = icmp eq i32 %and445, 0
  br i1 %tobool446.not, label %do.body444.do.body472_crit_edge, label %do.body448

do.body444.do.body472_crit_edge:                  ; preds = %do.body444
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body472

do.body448:                                       ; preds = %do.body444
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_table.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dump_table, %do.body472)) #12
          to label %if.then462 [label %do.body472], !srcloc !395

if.then462:                                       ; preds = %do.body448
  call void @__sanitizer_cov_trace_pc() #14
  %ul_mdm_len2 = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 7, i32 18
  %48 = ptrtoint ptr %ul_mdm_len2 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %ul_mdm_len2, align 2
  %conv464 = zext i16 %49 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dump_table.__UNIQUE_ID_ddebug254, ptr noundef nonnull @.str.93, i32 noundef 593, ptr noundef nonnull @.str.75, i32 noundef %conv464, i32 noundef %conv464) #12
  br label %do.body472

do.body472:                                       ; preds = %if.then462, %do.body448, %do.body444.do.body472_crit_edge
  %50 = load i32, ptr @debug, align 4
  %and473 = and i32 %50, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and473)
  %tobool474.not = icmp eq i32 %and473, 0
  br i1 %tobool474.not, label %do.body472.do.body500_crit_edge, label %do.body476

do.body472.do.body500_crit_edge:                  ; preds = %do.body472
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body500

do.body476:                                       ; preds = %do.body472
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_table.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dump_table, %do.body500)) #12
          to label %if.then490 [label %do.body500], !srcloc !395

if.then490:                                       ; preds = %do.body476
  call void @__sanitizer_cov_trace_pc() #14
  %ul_diag_len = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 7, i32 17
  %51 = ptrtoint ptr %ul_diag_len to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %ul_diag_len, align 4
  %conv492 = zext i16 %52 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dump_table.__UNIQUE_ID_ddebug255, ptr noundef nonnull @.str.94, i32 noundef 595, ptr noundef nonnull @.str.75, i32 noundef %conv492, i32 noundef %conv492) #12
  br label %do.body500

do.body500:                                       ; preds = %if.then490, %do.body476, %do.body472.do.body500_crit_edge
  %53 = load i32, ptr @debug, align 4
  %and501 = and i32 %53, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and501)
  %tobool502.not = icmp eq i32 %and501, 0
  br i1 %tobool502.not, label %do.body500.do.body528_crit_edge, label %do.body504

do.body500.do.body528_crit_edge:                  ; preds = %do.body500
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body528

do.body504:                                       ; preds = %do.body500
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_table.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dump_table, %do.body528)) #12
          to label %if.then518 [label %do.body528], !srcloc !395

if.then518:                                       ; preds = %do.body504
  call void @__sanitizer_cov_trace_pc() #14
  %ul_app1_len = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 7, i32 19
  %54 = ptrtoint ptr %ul_app1_len to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %ul_app1_len, align 4
  %conv520 = zext i16 %55 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dump_table.__UNIQUE_ID_ddebug256, ptr noundef nonnull @.str.95, i32 noundef 597, ptr noundef nonnull @.str.75, i32 noundef %conv520, i32 noundef %conv520) #12
  br label %do.body528

do.body528:                                       ; preds = %if.then518, %do.body504, %do.body500.do.body528_crit_edge
  %56 = load i32, ptr @debug, align 4
  %and529 = and i32 %56, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and529)
  %tobool530.not = icmp eq i32 %and529, 0
  br i1 %tobool530.not, label %do.body528.do.body556_crit_edge, label %do.body532

do.body528.do.body556_crit_edge:                  ; preds = %do.body528
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body556

do.body532:                                       ; preds = %do.body528
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_table.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dump_table, %do.body556)) #12
          to label %if.then546 [label %do.body556], !srcloc !395

if.then546:                                       ; preds = %do.body532
  call void @__sanitizer_cov_trace_pc() #14
  %ul_app2_len = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 7, i32 20
  %57 = ptrtoint ptr %ul_app2_len to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %ul_app2_len, align 2
  %conv548 = zext i16 %58 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dump_table.__UNIQUE_ID_ddebug257, ptr noundef nonnull @.str.96, i32 noundef 599, ptr noundef nonnull @.str.75, i32 noundef %conv548, i32 noundef %conv548) #12
  br label %do.body556

do.body556:                                       ; preds = %if.then546, %do.body532, %do.body528.do.body556_crit_edge
  %59 = load i32, ptr @debug, align 4
  %and557 = and i32 %59, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and557)
  %tobool558.not = icmp eq i32 %and557, 0
  br i1 %tobool558.not, label %do.body556.do.end583_crit_edge, label %do.body560

do.body556.do.end583_crit_edge:                   ; preds = %do.body556
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end583

do.body560:                                       ; preds = %do.body556
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_table.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dump_table, %do.end583)) #12
          to label %if.then574 [label %do.end583], !srcloc !395

if.then574:                                       ; preds = %do.body560
  call void @__sanitizer_cov_trace_pc() #14
  %ul_ctrl_len = getelementptr inbounds %struct.nozomi, ptr %dc, i32 0, i32 7, i32 21
  %60 = ptrtoint ptr %ul_ctrl_len to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %ul_ctrl_len, align 4
  %conv576 = zext i16 %61 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dump_table.__UNIQUE_ID_ddebug258, ptr noundef nonnull @.str.97, i32 noundef 601, ptr noundef nonnull @.str.75, i32 noundef %conv576, i32 noundef %conv576) #12
  br label %do.end583

do.end583:                                        ; preds = %if.then574, %do.body560, %do.body556.do.end583_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_out(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_tty_wakeup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_port_tty_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_kref_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__tty_insert_flip_char(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_insert_flip_string_fixed_flag(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @card_type_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %card_type = getelementptr inbounds %struct.nozomi, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %card_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %card_type, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.132, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @open_ttys_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %open_ttys = getelementptr inbounds %struct.nozomi, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %open_ttys to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %open_ttys, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.134, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ntty_shutdown(ptr noundef %tport) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dc1 = getelementptr inbounds %struct.port, ptr %tport, i32 0, i32 14
  %0 = ptrtoint ptr %dc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dc1, align 4
  %2 = load i32, ptr @debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body13_crit_edge, label %do.body2

entry.do.body13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body13

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ntty_shutdown.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ntty_shutdown, %do.body13)) #12
          to label %if.then8 [label %do.body13], !srcloc !395

if.then8:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #14
  %token_dl = getelementptr inbounds %struct.port, ptr %tport, i32 0, i32 11
  %3 = ptrtoint ptr %token_dl to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %token_dl, align 2
  %conv = zext i16 %4 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ntty_shutdown.__UNIQUE_ID_ddebug279, ptr noundef nonnull @.str.136, i32 noundef 1576, ptr noundef nonnull @.str.135, i32 noundef %conv) #12
  br label %do.body13

do.body13:                                        ; preds = %if.then8, %do.body2, %entry.do.body13_crit_edge
  %spin_mutex = getelementptr inbounds %struct.nozomi, ptr %1, i32 0, i32 11
  %call17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spin_mutex) #12
  %token_dl22 = getelementptr inbounds %struct.port, ptr %tport, i32 0, i32 11
  %5 = ptrtoint ptr %token_dl22 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %token_dl22, align 2
  %neg = xor i16 %6, -1
  %last_ier = getelementptr inbounds %struct.nozomi, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %last_ier to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %last_ier, align 4
  %and25 = and i16 %8, %neg
  store i16 %and25, ptr %last_ier, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !449
  tail call void @arm_heavy_mb() #12
  %9 = ptrtoint ptr %last_ier to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %last_ier, align 4
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  %reg_ier = getelementptr inbounds %struct.nozomi, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %reg_ier to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_ier, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %13, i16 %11) #12, !srcloc !393
  %open_ttys = getelementptr inbounds %struct.nozomi, ptr %1, i32 0, i32 14
  %14 = ptrtoint ptr %open_ttys to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %open_ttys, align 4
  %dec = add i32 %15, -1
  store i32 %dec, ptr %open_ttys, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spin_mutex, i32 noundef %call17) #12
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef %tport) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntty_activate(ptr noundef %tport, ptr nocapture noundef readonly %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dc1 = getelementptr inbounds %struct.port, ptr %tport, i32 0, i32 14
  %0 = ptrtoint ptr %dc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dc1, align 4
  %2 = load i32, ptr @debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body13_crit_edge, label %do.body2

entry.do.body13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body13

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ntty_activate.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ntty_activate, %do.body13)) #12
          to label %if.then8 [label %do.body13], !srcloc !395

if.then8:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #14
  %token_dl = getelementptr inbounds %struct.port, ptr %tport, i32 0, i32 11
  %3 = ptrtoint ptr %token_dl to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %token_dl, align 2
  %conv = zext i16 %4 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ntty_activate.__UNIQUE_ID_ddebug278, ptr noundef nonnull @.str.139, i32 noundef 1554, ptr noundef nonnull @.str.138, i32 noundef %conv) #12
  br label %do.body13

do.body13:                                        ; preds = %if.then8, %do.body2, %entry.do.body13_crit_edge
  %spin_mutex = getelementptr inbounds %struct.nozomi, ptr %1, i32 0, i32 11
  %call17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spin_mutex) #12
  %last_ier = getelementptr inbounds %struct.nozomi, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %last_ier to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %last_ier, align 4
  %token_dl23 = getelementptr inbounds %struct.port, ptr %tport, i32 0, i32 11
  %7 = ptrtoint ptr %token_dl23 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %token_dl23, align 2
  %or46 = or i16 %8, %6
  store i16 %or46, ptr %last_ier, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !450
  tail call void @arm_heavy_mb() #12
  %9 = ptrtoint ptr %last_ier to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %last_ier, align 4
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  %reg_ier = getelementptr inbounds %struct.nozomi, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %reg_ier to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_ier, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %13, i16 %11) #12, !srcloc !393
  %open_ttys = getelementptr inbounds %struct.nozomi, ptr %1, i32 0, i32 14
  %14 = ptrtoint ptr %open_ttys to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %open_ttys, align 4
  %inc = add i32 %15, 1
  store i32 %inc, ptr %open_ttys, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spin_mutex, i32 noundef %call17) #12
  %index = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 5
  %16 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %index, align 4
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140, i32 noundef %17, ptr noundef %tport) #15
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_tty_hangup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__tty_alloc_driver(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntty_install(ptr noundef %driver, ptr noundef %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i.i = icmp eq ptr %tty, null
  br i1 %tobool.not.i.i, label %entry.cleanup_crit_edge, label %get_dc_by_tty.exit.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

get_dc_by_tty.exit.i:                             ; preds = %entry
  %index.i.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 5
  %0 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index.i.i, align 4
  %.frozen = freeze i32 %1
  %div.i.i = sdiv i32 %.frozen, 4
  %arrayidx.i.i = getelementptr [64 x ptr], ptr @ndevs, i32 0, i32 %div.i.i
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  %4 = mul i32 %div.i.i, 4
  %rem.i.decomposed = sub i32 %.frozen, %4
  %arrayidx.i = getelementptr %struct.nozomi, ptr %3, i32 0, i32 9, i32 %rem.i.decomposed
  %cond.i.ph = select i1 %tobool.not.i, ptr null, ptr %arrayidx.i
  %tobool.not = icmp eq ptr %cond.i.ph, null
  %or.cond = or i1 %tobool.not, %tobool.not.i
  br i1 %or.cond, label %get_dc_by_tty.exit.i.cleanup_crit_edge, label %lor.lhs.false3

get_dc_by_tty.exit.i.cleanup_crit_edge:           ; preds = %get_dc_by_tty.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false3:                                   ; preds = %get_dc_by_tty.exit.i
  %state = getelementptr inbounds %struct.nozomi, ptr %3, i32 0, i32 13
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %cmp.not = icmp eq i32 %6, 3
  br i1 %cmp.not, label %if.end, label %lor.lhs.false3.cleanup_crit_edge

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  %call4 = tail call i32 @tty_standard_install(ptr noundef %driver, ptr noundef nonnull %tty) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %7 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %cond.i.ph, ptr %driver_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %get_dc_by_tty.exit.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %lor.lhs.false3.cleanup_crit_edge ], [ -19, %get_dc_by_tty.exit.i.cleanup_crit_edge ], [ 0, %if.then6 ], [ %call4, %if.end.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntty_open(ptr noundef %tty, ptr noundef %filp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %call = tail call i32 @tty_port_open(ptr noundef %1, ptr noundef %tty, ptr noundef %filp) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ntty_close(ptr noundef %tty, ptr noundef %filp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @tty_port_close(ptr noundef nonnull %1, ptr noundef %tty, ptr noundef %filp) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @ntty_cleanup(ptr nocapture noundef writeonly %tty) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %driver_data, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntty_write(ptr noundef readonly %tty, ptr noundef %buffer, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %tty, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %get_dc_by_tty.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

get_dc_by_tty.exit:                               ; preds = %entry
  %index.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 5
  %0 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index.i, align 4
  %div.i = sdiv i32 %1, 4
  %arrayidx.i = getelementptr [64 x ptr], ptr @ndevs, i32 0, i32 %div.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %4 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data, align 4
  %tobool.not = icmp eq ptr %3, null
  %tobool1.not = icmp eq ptr %5, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool1.not
  br i1 %or.cond, label %get_dc_by_tty.exit.cleanup_crit_edge, label %if.end

get_dc_by_tty.exit.cleanup_crit_edge:             ; preds = %get_dc_by_tty.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %get_dc_by_tty.exit
  %fifo_ul = getelementptr inbounds %struct.port, ptr %5, i32 0, i32 4
  %call2 = tail call i32 @__kfifo_in(ptr noundef %fifo_ul, ptr noundef %buffer, i32 noundef %count) #12
  %spin_mutex = getelementptr inbounds %struct.nozomi, ptr %3, i32 0, i32 11
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spin_mutex) #12
  %port9 = getelementptr inbounds %struct.nozomi, ptr %3, i32 0, i32 9
  %cmp10 = icmp eq ptr %5, %port9
  br i1 %cmp10, label %if.then12, label %if.else36

if.then12:                                        ; preds = %if.end
  %CTS = getelementptr inbounds %struct.port, ptr %5, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %CTS to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %CTS, align 1
  %7 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool13.not = icmp eq i8 %7, 0
  br i1 %tobool13.not, label %do.end34, label %do.body15

do.body15:                                        ; preds = %if.then12
  %8 = load i32, ptr @debug, align 4
  %and = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %do.body15.do.end31_crit_edge, label %do.body18

do.body15.do.end31_crit_edge:                     ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end31

do.body18:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ntty_write.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ntty_write, %do.end31)) #12
          to label %if.then25 [label %do.end31], !srcloc !395

if.then25:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ntty_write.__UNIQUE_ID_ddebug280, ptr noundef nonnull @.str.151, i32 noundef 1619, ptr noundef nonnull @.str.150) #12
  br label %do.end31

do.end31:                                         ; preds = %if.then25, %do.body18, %do.body15.do.end31_crit_edge
  %9 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %index.i, align 4
  %rem = srem i32 %10, 4
  %arrayidx.i56 = getelementptr [5 x i16], ptr @enable_transmit_ul.mask, i32 0, i32 %rem
  %11 = ptrtoint ptr %arrayidx.i56 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx.i56, align 2
  %last_ier.i = getelementptr inbounds %struct.nozomi, ptr %3, i32 0, i32 5
  %13 = ptrtoint ptr %last_ier.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %last_ier.i, align 4
  %or10.i = or i16 %14, %12
  store i16 %or10.i, ptr %last_ier.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !441
  tail call void @arm_heavy_mb() #12
  %15 = ptrtoint ptr %last_ier.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %last_ier.i, align 4
  %17 = tail call i16 @llvm.bswap.i16(i16 %16) #12
  %reg_ier.i = getelementptr inbounds %struct.nozomi, ptr %3, i32 0, i32 4
  %18 = ptrtoint ptr %reg_ier.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg_ier.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %19, i16 %17) #12, !srcloc !393
  br label %if.end39

do.end34:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  %pdev = getelementptr inbounds %struct.nozomi, ptr %3, i32 0, i32 8
  %20 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.152) #15
  br label %if.end39

if.else36:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %index.i, align 4
  %rem38 = srem i32 %23, 4
  %arrayidx.i57 = getelementptr [5 x i16], ptr @enable_transmit_ul.mask, i32 0, i32 %rem38
  %24 = ptrtoint ptr %arrayidx.i57 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx.i57, align 2
  %last_ier.i58 = getelementptr inbounds %struct.nozomi, ptr %3, i32 0, i32 5
  %26 = ptrtoint ptr %last_ier.i58 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %last_ier.i58, align 4
  %or10.i59 = or i16 %27, %25
  store i16 %or10.i59, ptr %last_ier.i58, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !441
  tail call void @arm_heavy_mb() #12
  %28 = ptrtoint ptr %last_ier.i58 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %last_ier.i58, align 4
  %30 = tail call i16 @llvm.bswap.i16(i16 %29) #12
  %reg_ier.i60 = getelementptr inbounds %struct.nozomi, ptr %3, i32 0, i32 4
  %31 = ptrtoint ptr %reg_ier.i60 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reg_ier.i60, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %32, i16 %30) #12, !srcloc !393
  br label %if.end39

if.end39:                                         ; preds = %if.else36, %do.end34, %do.end31
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spin_mutex, i32 noundef %call6) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %get_dc_by_tty.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end39 ], [ -19, %get_dc_by_tty.exit.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ntty_write_room(ptr noundef readonly %tty) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %tobool.not.i = icmp eq ptr %tty, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %get_dc_by_tty.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

get_dc_by_tty.exit:                               ; preds = %entry
  %index.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 5
  %2 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i, align 4
  %div.i = sdiv i32 %3, 4
  %arrayidx.i = getelementptr [64 x ptr], ptr @ndevs, i32 0, i32 %div.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %get_dc_by_tty.exit.if.end_crit_edge, label %if.then

get_dc_by_tty.exit.if.end_crit_edge:              ; preds = %get_dc_by_tty.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %get_dc_by_tty.exit
  call void @__sanitizer_cov_trace_pc() #14
  %fifo_ul = getelementptr inbounds %struct.port, ptr %1, i32 0, i32 4
  %mask = getelementptr inbounds %struct.port, ptr %1, i32 0, i32 4, i32 0, i32 0, i32 2
  %6 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mask, align 4
  %8 = ptrtoint ptr %fifo_ul to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fifo_ul, align 4
  %out = getelementptr inbounds %struct.port, ptr %1, i32 0, i32 4, i32 0, i32 0, i32 1
  %10 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %out, align 4
  %sub.neg = add i32 %7, 1
  %add = sub i32 %sub.neg, %9
  %sub1 = add i32 %add, %11
  br label %if.end

if.end:                                           ; preds = %if.then, %get_dc_by_tty.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %room.0 = phi i32 [ %sub1, %if.then ], [ 4096, %get_dc_by_tty.exit.if.end_crit_edge ], [ 4096, %entry.if.end_crit_edge ]
  ret i32 %room.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ntty_chars_in_buffer(ptr noundef readonly %tty) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %tobool.not.i = icmp eq ptr %tty, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %get_dc_by_tty.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

get_dc_by_tty.exit:                               ; preds = %entry
  %index.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 5
  %2 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i, align 4
  %div.i = sdiv i32 %3, 4
  %arrayidx.i = getelementptr [64 x ptr], ptr @ndevs, i32 0, i32 %div.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not = icmp eq ptr %5, null
  %tobool1.not = icmp eq ptr %1, null
  %spec.select = select i1 %tobool.not, i1 true, i1 %tobool1.not, !prof !391
  br i1 %spec.select, label %get_dc_by_tty.exit.cleanup_crit_edge, label %if.end, !prof !391

get_dc_by_tty.exit.cleanup_crit_edge:             ; preds = %get_dc_by_tty.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %get_dc_by_tty.exit
  call void @__sanitizer_cov_trace_pc() #14
  %fifo_ul = getelementptr inbounds %struct.port, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %fifo_ul to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fifo_ul, align 4
  %out = getelementptr inbounds %struct.port, ptr %1, i32 0, i32 4, i32 0, i32 0, i32 1
  %8 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %out, align 4
  %sub = sub i32 %7, %9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %get_dc_by_tty.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub, %if.end ], [ 0, %get_dc_by_tty.exit.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntty_ioctl(ptr nocapture noundef readonly %tty, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21596, i32 %cmd)
  %cond = icmp eq i32 %cmd, 21596
  br i1 %cond, label %sw.bb, label %do.body16

sw.bb:                                            ; preds = %entry
  %tty_icount = getelementptr inbounds %struct.port, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %tty_icount to i32
  call void @__asan_load4_noabort(i32 %2)
  %cprev.sroa.0.0.copyload = load i32, ptr %tty_icount, align 4
  %cprev.sroa.8.0.tty_icount.sroa_idx = getelementptr inbounds %struct.port, ptr %1, i32 0, i32 13, i32 1
  %3 = ptrtoint ptr %cprev.sroa.8.0.tty_icount.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %3)
  %cprev.sroa.8.0.copyload = load i32, ptr %cprev.sroa.8.0.tty_icount.sroa_idx, align 4
  %cprev.sroa.12.0.tty_icount.sroa_idx = getelementptr inbounds %struct.port, ptr %1, i32 0, i32 13, i32 2
  %4 = ptrtoint ptr %cprev.sroa.12.0.tty_icount.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %cprev.sroa.12.0.copyload = load i32, ptr %cprev.sroa.12.0.tty_icount.sroa_idx, align 4
  %cprev.sroa.16.0.tty_icount.sroa_idx = getelementptr inbounds %struct.port, ptr %1, i32 0, i32 13, i32 3
  %5 = ptrtoint ptr %cprev.sroa.16.0.tty_icount.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %5)
  %cprev.sroa.16.0.copyload = load i32, ptr %cprev.sroa.16.0.tty_icount.sroa_idx, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 1740) #12
  %6 = ptrtoint ptr %tty_icount to i32
  call void @__asan_load4_noabort(i32 %6)
  %cnow.sroa.0.0.copyload.i = load i32, ptr %tty_icount, align 4
  %7 = ptrtoint ptr %cprev.sroa.8.0.tty_icount.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %7)
  %cnow.sroa.6.0.copyload.i = load i32, ptr %cprev.sroa.8.0.tty_icount.sroa_idx, align 4
  %8 = ptrtoint ptr %cprev.sroa.12.0.tty_icount.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %8)
  %cnow.sroa.7.0.copyload.i = load i32, ptr %cprev.sroa.12.0.tty_icount.sroa_idx, align 4
  %9 = ptrtoint ptr %cprev.sroa.16.0.tty_icount.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %9)
  %cnow.sroa.8.0.copyload.i = load i32, ptr %cprev.sroa.16.0.tty_icount.sroa_idx, align 4
  %and.i = and i32 %arg, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %cnow.sroa.7.0.copyload.i, i32 %cprev.sroa.12.0.copyload)
  %cmp.not.i = icmp eq i32 %cnow.sroa.7.0.copyload.i, %cprev.sroa.12.0.copyload
  %or.cond = select i1 %tobool.not.i, i1 true, i1 %cmp.not.i
  br i1 %or.cond, label %lor.lhs.false.i, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

lor.lhs.false.i:                                  ; preds = %sw.bb
  %and2.i = and i32 %arg, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %cnow.sroa.6.0.copyload.i, i32 %cprev.sroa.8.0.copyload)
  %cmp6.not.i = icmp eq i32 %cnow.sroa.6.0.copyload.i, %cprev.sroa.8.0.copyload
  %or.cond103 = select i1 %tobool3.not.i, i1 true, i1 %cmp6.not.i
  br i1 %or.cond103, label %lor.lhs.false7.i, label %lor.lhs.false.i.sw.epilog_crit_edge

lor.lhs.false.i.sw.epilog_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

lor.lhs.false7.i:                                 ; preds = %lor.lhs.false.i
  %and8.i = and i32 %arg, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %cnow.sroa.8.0.copyload.i, i32 %cprev.sroa.16.0.copyload)
  %cmp12.not.i = icmp eq i32 %cnow.sroa.8.0.copyload.i, %cprev.sroa.16.0.copyload
  %or.cond104 = select i1 %tobool9.not.i, i1 true, i1 %cmp12.not.i
  br i1 %or.cond104, label %lor.rhs.i, label %lor.lhs.false7.i.sw.epilog_crit_edge

lor.lhs.false7.i.sw.epilog_crit_edge:             ; preds = %lor.lhs.false7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

lor.rhs.i:                                        ; preds = %lor.lhs.false7.i
  %and13.i = and i32 %arg, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %cnow.sroa.0.0.copyload.i, i32 %cprev.sroa.0.0.copyload)
  %cmp16.i.not = icmp eq i32 %cnow.sroa.0.0.copyload.i, %cprev.sroa.0.0.copyload
  %or.cond108 = select i1 %tobool14.not.i, i1 true, i1 %cmp16.i.not
  br i1 %or.cond108, label %if.then, label %lor.rhs.i.sw.epilog_crit_edge

lor.rhs.i.sw.epilog_crit_edge:                    ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then:                                          ; preds = %lor.rhs.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #12
  %10 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #12
  %tty_wait = getelementptr inbounds %struct.port, ptr %1, i32 0, i32 12
  %call5112 = call i32 @prepare_to_wait_event(ptr noundef %tty_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #12
  %11 = ptrtoint ptr %cprev.sroa.12.0.tty_icount.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %11)
  %cnow.sroa.7.0.copyload.i49115 = load i32, ptr %cprev.sroa.12.0.tty_icount.sroa_idx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cnow.sroa.7.0.copyload.i49115, i32 %cnow.sroa.7.0.copyload.i)
  %cmp.not.i56117 = icmp eq i32 %cnow.sroa.7.0.copyload.i49115, %cnow.sroa.7.0.copyload.i
  %or.cond105118 = select i1 %tobool.not.i, i1 true, i1 %cmp.not.i56117
  br i1 %or.cond105118, label %if.then.lor.lhs.false.i60_crit_edge, label %if.then.for.end_crit_edge

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.then.lor.lhs.false.i60_crit_edge:              ; preds = %if.then
  br label %lor.lhs.false.i60

lor.lhs.false.i60:                                ; preds = %cleanup.lor.lhs.false.i60_crit_edge, %if.then.lor.lhs.false.i60_crit_edge
  %cnow.sroa.7.0.copyload.i49125 = phi i32 [ %cnow.sroa.7.0.copyload.i49, %cleanup.lor.lhs.false.i60_crit_edge ], [ %cnow.sroa.7.0.copyload.i49115, %if.then.lor.lhs.false.i60_crit_edge ]
  %call5122 = phi i32 [ %call5, %cleanup.lor.lhs.false.i60_crit_edge ], [ %call5112, %if.then.lor.lhs.false.i60_crit_edge ]
  %cprev.sroa.16.0121 = phi i32 [ %cnow.sroa.8.0.copyload.i51126, %cleanup.lor.lhs.false.i60_crit_edge ], [ %cnow.sroa.8.0.copyload.i, %if.then.lor.lhs.false.i60_crit_edge ]
  %cprev.sroa.8.0120 = phi i32 [ %cnow.sroa.6.0.copyload.i47124, %cleanup.lor.lhs.false.i60_crit_edge ], [ %cnow.sroa.6.0.copyload.i, %if.then.lor.lhs.false.i60_crit_edge ]
  %cprev.sroa.0.0119 = phi i32 [ %cnow.sroa.0.0.copyload.i45123, %cleanup.lor.lhs.false.i60_crit_edge ], [ %cnow.sroa.0.0.copyload.i, %if.then.lor.lhs.false.i60_crit_edge ]
  %12 = ptrtoint ptr %tty_icount to i32
  call void @__asan_load4_noabort(i32 %12)
  %cnow.sroa.0.0.copyload.i45123 = load i32, ptr %tty_icount, align 4
  %13 = ptrtoint ptr %cprev.sroa.8.0.tty_icount.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %13)
  %cnow.sroa.6.0.copyload.i47124 = load i32, ptr %cprev.sroa.8.0.tty_icount.sroa_idx, align 4
  %14 = ptrtoint ptr %cprev.sroa.16.0.tty_icount.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %14)
  %cnow.sroa.8.0.copyload.i51126 = load i32, ptr %cprev.sroa.16.0.tty_icount.sroa_idx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cnow.sroa.6.0.copyload.i47124, i32 %cprev.sroa.8.0120)
  %cmp6.not.i62 = icmp eq i32 %cnow.sroa.6.0.copyload.i47124, %cprev.sroa.8.0120
  %or.cond106 = select i1 %tobool3.not.i, i1 true, i1 %cmp6.not.i62
  call void @__sanitizer_cov_trace_cmp4(i32 %cnow.sroa.8.0.copyload.i51126, i32 %cprev.sroa.16.0121)
  %cmp12.not.i68 = icmp eq i32 %cnow.sroa.8.0.copyload.i51126, %cprev.sroa.16.0121
  %or.cond107 = select i1 %tobool9.not.i, i1 true, i1 %cmp12.not.i68
  %or.cond130 = select i1 %or.cond106, i1 %or.cond107, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %cnow.sroa.0.0.copyload.i45123, i32 %cprev.sroa.0.0119)
  %cmp16.i73.not = icmp eq i32 %cnow.sroa.0.0.copyload.i45123, %cprev.sroa.0.0119
  %or.cond109 = select i1 %tobool14.not.i, i1 true, i1 %cmp16.i73.not
  %or.cond131 = select i1 %or.cond130, i1 %or.cond109, i1 false
  br i1 %or.cond131, label %if.end, label %lor.lhs.false.i60.for.end_crit_edge

lor.lhs.false.i60.for.end_crit_edge:              ; preds = %lor.lhs.false.i60
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end:                                           ; preds = %lor.lhs.false.i60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5122)
  %tobool9.not = icmp eq i32 %call5122, 0
  br i1 %tobool9.not, label %cleanup, label %if.end.__out_crit_edge

if.end.__out_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %__out

cleanup:                                          ; preds = %if.end
  call void @schedule() #12
  %call5 = call i32 @prepare_to_wait_event(ptr noundef %tty_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #12
  %15 = ptrtoint ptr %cprev.sroa.12.0.tty_icount.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %15)
  %cnow.sroa.7.0.copyload.i49 = load i32, ptr %cprev.sroa.12.0.tty_icount.sroa_idx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cnow.sroa.7.0.copyload.i49, i32 %cnow.sroa.7.0.copyload.i49125)
  %cmp.not.i56 = icmp eq i32 %cnow.sroa.7.0.copyload.i49, %cnow.sroa.7.0.copyload.i49125
  %or.cond105 = select i1 %tobool.not.i, i1 true, i1 %cmp.not.i56
  br i1 %or.cond105, label %cleanup.lor.lhs.false.i60_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

cleanup.lor.lhs.false.i60_crit_edge:              ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.i60

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %lor.lhs.false.i60.for.end_crit_edge, %if.then.for.end_crit_edge
  call void @finish_wait(ptr noundef %tty_wait, ptr noundef nonnull %__wq_entry) #12
  br label %__out

__out:                                            ; preds = %for.end, %if.end.__out_crit_edge
  %__ret4.197 = phi i32 [ 0, %for.end ], [ %call5122, %if.end.__out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #12
  br label %sw.epilog

do.body16:                                        ; preds = %entry
  %16 = load i32, ptr @debug, align 4
  %and = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %do.body16.sw.epilog_crit_edge, label %do.body19

do.body16.sw.epilog_crit_edge:                    ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

do.body19:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ntty_ioctl.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ntty_ioctl, %sw.epilog)) #12
          to label %if.then26 [label %sw.epilog], !srcloc !395

if.then26:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ntty_ioctl.__UNIQUE_ID_ddebug281, ptr noundef nonnull @.str.154, i32 noundef 1744, ptr noundef nonnull @.str.153, i32 noundef %cmd, i32 noundef %cmd) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then26, %do.body19, %do.body16.sw.epilog_crit_edge, %__out, %lor.rhs.i.sw.epilog_crit_edge, %lor.lhs.false7.i.sw.epilog_crit_edge, %lor.lhs.false.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %rval.0 = phi i32 [ -515, %if.then26 ], [ -515, %do.body16.sw.epilog_crit_edge ], [ -515, %do.body19 ], [ %__ret4.197, %__out ], [ 0, %lor.lhs.false7.i.sw.epilog_crit_edge ], [ 0, %lor.lhs.false.i.sw.epilog_crit_edge ], [ 0, %sw.bb.sw.epilog_crit_edge ], [ 0, %lor.rhs.i.sw.epilog_crit_edge ]
  ret i32 %rval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ntty_throttle(ptr noundef readonly %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %tty, null
  br i1 %tobool.not.i, label %get_port_by_tty.exit.i, label %get_dc_by_tty.exit.i.i

get_dc_by_tty.exit.i.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %index.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 5
  %0 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index.i, align 4
  %div.i = sdiv i32 %1, 4
  %arrayidx.i = getelementptr [64 x ptr], ptr @ndevs, i32 0, i32 %div.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %spin_mutex = getelementptr inbounds %struct.nozomi, ptr %3, i32 0, i32 11
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spin_mutex) #12
  %4 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index.i, align 4
  %.frozen = freeze i32 %5
  %div.i.i.i = sdiv i32 %.frozen, 4
  %arrayidx.i.i.i = getelementptr [64 x ptr], ptr @ndevs, i32 0, i32 %div.i.i.i
  %6 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  %8 = mul i32 %div.i.i.i, 4
  %rem.i.i.decomposed = sub i32 %.frozen, %8
  %arrayidx.i.i = getelementptr %struct.nozomi, ptr %7, i32 0, i32 9, i32 %rem.i.i.decomposed
  %cond.i.ph.i = select i1 %tobool.not.i.i, ptr null, ptr %arrayidx.i.i
  %RTS9.i = getelementptr inbounds %struct.port, ptr %cond.i.ph.i, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %RTS9.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load10.i = load i8, ptr %RTS9.i, align 1
  %bf.clear13.i = and i8 %bf.load10.i, -3
  store i8 %bf.clear13.i, ptr %RTS9.i, align 1
  %update_flow_control15.i = getelementptr inbounds %struct.port, ptr %cond.i.ph.i, i32 0, i32 1
  %10 = ptrtoint ptr %update_flow_control15.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %update_flow_control15.i, align 4
  %11 = load i32, ptr %index.i, align 4
  %div.i.i = sdiv i32 %11, 4
  %arrayidx.i5.i = getelementptr [64 x ptr], ptr @ndevs, i32 0, i32 %div.i.i
  %12 = ptrtoint ptr %arrayidx.i5.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i5.i, align 4
  br label %set_rts.exit

get_port_by_tty.exit.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call311 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull inttoptr (i32 3820 to ptr)) #12
  call void @__asan_load1_noabort(i32 578)
  %bf.load.i = load i8, ptr inttoptr (i32 578 to ptr), align 2
  %bf.clear.i = and i8 %bf.load.i, -3
  store i8 %bf.clear.i, ptr inttoptr (i32 578 to ptr), align 2
  call void @__asan_store1_noabort(i32 576)
  store i8 1, ptr inttoptr (i32 576 to ptr), align 64
  br label %set_rts.exit

set_rts.exit:                                     ; preds = %get_port_by_tty.exit.i, %get_dc_by_tty.exit.i.i
  %call314 = phi i32 [ %call3, %get_dc_by_tty.exit.i.i ], [ %call311, %get_port_by_tty.exit.i ]
  %spin_mutex12 = phi ptr [ %spin_mutex, %get_dc_by_tty.exit.i.i ], [ inttoptr (i32 3820 to ptr), %get_port_by_tty.exit.i ]
  %cond.i7.i = phi ptr [ %13, %get_dc_by_tty.exit.i.i ], [ null, %get_port_by_tty.exit.i ]
  %last_ier.i.i = getelementptr inbounds %struct.nozomi, ptr %cond.i7.i, i32 0, i32 5
  %14 = ptrtoint ptr %last_ier.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %last_ier.i.i, align 4
  %or10.i.i = or i16 %15, 4096
  store i16 %or10.i.i, ptr %last_ier.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !441
  tail call void @arm_heavy_mb() #12
  %16 = ptrtoint ptr %last_ier.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %last_ier.i.i, align 4
  %18 = tail call i16 @llvm.bswap.i16(i16 %17) #12
  %reg_ier.i.i = getelementptr inbounds %struct.nozomi, ptr %cond.i7.i, i32 0, i32 4
  %19 = ptrtoint ptr %reg_ier.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg_ier.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %20, i16 %18) #12, !srcloc !393
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spin_mutex12, i32 noundef %call314) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ntty_unthrottle(ptr noundef readonly %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %tty, null
  br i1 %tobool.not.i, label %entry.get_dc_by_tty.exit_crit_edge, label %cond.true.i

entry.get_dc_by_tty.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_dc_by_tty.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %index.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 5
  %0 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index.i, align 4
  %div.i = sdiv i32 %1, 4
  %arrayidx.i = getelementptr [64 x ptr], ptr @ndevs, i32 0, i32 %div.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  br label %get_dc_by_tty.exit

get_dc_by_tty.exit:                               ; preds = %cond.true.i, %entry.get_dc_by_tty.exit_crit_edge
  %cond.i = phi ptr [ %3, %cond.true.i ], [ null, %entry.get_dc_by_tty.exit_crit_edge ]
  %spin_mutex = getelementptr inbounds %struct.nozomi, ptr %cond.i, i32 0, i32 11
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spin_mutex) #12
  %index = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 5
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  %rem = srem i32 %5, 4
  %arrayidx.i11 = getelementptr [5 x i16], ptr @enable_transmit_dl.mask, i32 0, i32 %rem
  %6 = ptrtoint ptr %arrayidx.i11 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx.i11, align 2
  %last_ier.i = getelementptr inbounds %struct.nozomi, ptr %cond.i, i32 0, i32 5
  %8 = ptrtoint ptr %last_ier.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %last_ier.i, align 4
  %or10.i = or i16 %9, %7
  store i16 %or10.i, ptr %last_ier.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !451
  tail call void @arm_heavy_mb() #12
  %10 = ptrtoint ptr %last_ier.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %last_ier.i, align 4
  %12 = tail call i16 @llvm.bswap.i16(i16 %11) #12
  %reg_ier.i = getelementptr inbounds %struct.nozomi, ptr %cond.i, i32 0, i32 4
  %13 = ptrtoint ptr %reg_ier.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg_ier.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %14, i16 %12) #12, !srcloc !393
  br i1 %tobool.not.i, label %get_port_by_tty.exit.i, label %get_dc_by_tty.exit.i.i

get_dc_by_tty.exit.i.i:                           ; preds = %get_dc_by_tty.exit
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %index, align 4
  %.frozen = freeze i32 %16
  %div.i.i.i = sdiv i32 %.frozen, 4
  %arrayidx.i.i.i = getelementptr [64 x ptr], ptr @ndevs, i32 0, i32 %div.i.i.i
  %17 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %18, null
  %19 = mul i32 %div.i.i.i, 4
  %rem.i.i.decomposed = sub i32 %.frozen, %19
  %arrayidx.i.i = getelementptr %struct.nozomi, ptr %18, i32 0, i32 9, i32 %rem.i.i.decomposed
  %cond.i.ph.i = select i1 %tobool.not.i.i, ptr null, ptr %arrayidx.i.i
  %RTS9.i = getelementptr inbounds %struct.port, ptr %cond.i.ph.i, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %RTS9.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load10.i = load i8, ptr %RTS9.i, align 1
  %bf.set14.i = or i8 %bf.load10.i, 2
  store i8 %bf.set14.i, ptr %RTS9.i, align 1
  %update_flow_control15.i = getelementptr inbounds %struct.port, ptr %cond.i.ph.i, i32 0, i32 1
  %21 = ptrtoint ptr %update_flow_control15.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %update_flow_control15.i, align 4
  %22 = load i32, ptr %index, align 4
  %div.i.i = sdiv i32 %22, 4
  %arrayidx.i5.i = getelementptr [64 x ptr], ptr @ndevs, i32 0, i32 %div.i.i
  %23 = ptrtoint ptr %arrayidx.i5.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i5.i, align 4
  br label %set_rts.exit

get_port_by_tty.exit.i:                           ; preds = %get_dc_by_tty.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load1_noabort(i32 578)
  %bf.load.i = load i8, ptr inttoptr (i32 578 to ptr), align 2
  %bf.set.i = or i8 %bf.load.i, 2
  store i8 %bf.set.i, ptr inttoptr (i32 578 to ptr), align 2
  call void @__asan_store1_noabort(i32 576)
  store i8 1, ptr inttoptr (i32 576 to ptr), align 64
  br label %set_rts.exit

set_rts.exit:                                     ; preds = %get_port_by_tty.exit.i, %get_dc_by_tty.exit.i.i
  %cond.i7.i = phi ptr [ %24, %get_dc_by_tty.exit.i.i ], [ null, %get_port_by_tty.exit.i ]
  %last_ier.i.i = getelementptr inbounds %struct.nozomi, ptr %cond.i7.i, i32 0, i32 5
  %25 = ptrtoint ptr %last_ier.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %last_ier.i.i, align 4
  %or10.i.i = or i16 %26, 4096
  store i16 %or10.i.i, ptr %last_ier.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !441
  tail call void @arm_heavy_mb() #12
  %27 = ptrtoint ptr %last_ier.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %last_ier.i.i, align 4
  %29 = tail call i16 @llvm.bswap.i16(i16 %28) #12
  %reg_ier.i.i = getelementptr inbounds %struct.nozomi, ptr %cond.i7.i, i32 0, i32 4
  %30 = ptrtoint ptr %reg_ier.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %reg_ier.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %31, i16 %29) #12, !srcloc !393
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spin_mutex, i32 noundef %call3) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ntty_hangup(ptr nocapture noundef readonly %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  tail call void @tty_port_hangup(ptr noundef %1) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ntty_tiocmget(ptr nocapture noundef readonly %tty) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %RTS = getelementptr inbounds %struct.port, ptr %1, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %RTS to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %RTS, align 1
  %3 = shl i8 %bf.load, 1
  %or40 = and i8 %3, 6
  %DCD = getelementptr inbounds %struct.port, ptr %1, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %DCD to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load8 = load i8, ptr %DCD, align 1
  %5 = shl i8 %bf.load8, 5
  %6 = and i8 %5, 64
  %or1441 = or i8 %6, %or40
  %7 = and i8 %5, -128
  %or2142 = or i8 %or1441, %7
  %or21 = zext i8 %or2142 to i32
  %bf.clear23 = and i8 %bf.load8, 1
  %8 = zext i8 %bf.clear23 to i32
  %9 = shl nuw nsw i32 %8, 8
  %or27 = or i32 %9, %or21
  %10 = shl i8 %bf.load8, 2
  %11 = and i8 %10, 32
  %12 = zext i8 %11 to i32
  %or34 = or i32 %or27, %12
  ret i32 %or34
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntty_tiocmset(ptr noundef %tty, i32 noundef %set, i32 noundef %clear) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %tty, null
  br i1 %tobool.not.i, label %entry.get_dc_by_tty.exit_crit_edge, label %cond.true.i

entry.get_dc_by_tty.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_dc_by_tty.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %index.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 5
  %0 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index.i, align 4
  %div.i = sdiv i32 %1, 4
  %arrayidx.i = getelementptr [64 x ptr], ptr @ndevs, i32 0, i32 %div.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  br label %get_dc_by_tty.exit

get_dc_by_tty.exit:                               ; preds = %cond.true.i, %entry.get_dc_by_tty.exit_crit_edge
  %cond.i = phi ptr [ %3, %cond.true.i ], [ null, %entry.get_dc_by_tty.exit_crit_edge ]
  %spin_mutex = getelementptr inbounds %struct.nozomi, ptr %cond.i, i32 0, i32 11
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spin_mutex) #12
  %and = and i32 %set, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %get_dc_by_tty.exit
  br i1 %tobool.not.i, label %get_port_by_tty.exit.i, label %get_dc_by_tty.exit.i.i

get_dc_by_tty.exit.i.i:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %index.i.i.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 5
  %4 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index.i.i.i, align 4
  %.frozen = freeze i32 %5
  %div.i.i.i = sdiv i32 %.frozen, 4
  %arrayidx.i.i.i = getelementptr [64 x ptr], ptr @ndevs, i32 0, i32 %div.i.i.i
  %6 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  %8 = mul i32 %div.i.i.i, 4
  %rem.i.i.decomposed = sub i32 %.frozen, %8
  %arrayidx.i.i = getelementptr %struct.nozomi, ptr %7, i32 0, i32 9, i32 %rem.i.i.decomposed
  %cond.i.ph.i = select i1 %tobool.not.i.i, ptr null, ptr %arrayidx.i.i
  %RTS9.i = getelementptr inbounds %struct.port, ptr %cond.i.ph.i, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %RTS9.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load10.i = load i8, ptr %RTS9.i, align 1
  %bf.set14.i = or i8 %bf.load10.i, 2
  store i8 %bf.set14.i, ptr %RTS9.i, align 1
  %update_flow_control15.i = getelementptr inbounds %struct.port, ptr %cond.i.ph.i, i32 0, i32 1
  %10 = ptrtoint ptr %update_flow_control15.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %update_flow_control15.i, align 4
  %11 = load i32, ptr %index.i.i.i, align 4
  %div.i.i = sdiv i32 %11, 4
  %arrayidx.i5.i = getelementptr [64 x ptr], ptr @ndevs, i32 0, i32 %div.i.i
  %12 = ptrtoint ptr %arrayidx.i5.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i5.i, align 4
  br label %set_rts.exit

get_port_by_tty.exit.i:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load1_noabort(i32 578)
  %bf.load.i = load i8, ptr inttoptr (i32 578 to ptr), align 2
  %bf.set.i = or i8 %bf.load.i, 2
  store i8 %bf.set.i, ptr inttoptr (i32 578 to ptr), align 2
  call void @__asan_store1_noabort(i32 576)
  store i8 1, ptr inttoptr (i32 576 to ptr), align 64
  br label %set_rts.exit

set_rts.exit:                                     ; preds = %get_port_by_tty.exit.i, %get_dc_by_tty.exit.i.i
  %cond.i7.i = phi ptr [ %13, %get_dc_by_tty.exit.i.i ], [ null, %get_port_by_tty.exit.i ]
  %last_ier.i.i = getelementptr inbounds %struct.nozomi, ptr %cond.i7.i, i32 0, i32 5
  %14 = ptrtoint ptr %last_ier.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %last_ier.i.i, align 4
  %or10.i.i = or i16 %15, 4096
  store i16 %or10.i.i, ptr %last_ier.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !441
  tail call void @arm_heavy_mb() #12
  %16 = ptrtoint ptr %last_ier.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %last_ier.i.i, align 4
  %18 = tail call i16 @llvm.bswap.i16(i16 %17) #12
  %reg_ier.i.i = getelementptr inbounds %struct.nozomi, ptr %cond.i7.i, i32 0, i32 4
  %19 = ptrtoint ptr %reg_ier.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg_ier.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %20, i16 %18) #12, !srcloc !393
  br label %if.end9

if.else:                                          ; preds = %get_dc_by_tty.exit
  %and6 = and i32 %clear, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.else.if.end9_crit_edge, label %if.then8

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then8:                                         ; preds = %if.else
  br i1 %tobool.not.i, label %get_port_by_tty.exit.i44, label %get_dc_by_tty.exit.i.i41

get_dc_by_tty.exit.i.i41:                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  %index.i.i.i28 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 5
  %21 = ptrtoint ptr %index.i.i.i28 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %index.i.i.i28, align 4
  %.frozen50 = freeze i32 %22
  %div.i.i.i29 = sdiv i32 %.frozen50, 4
  %arrayidx.i.i.i30 = getelementptr [64 x ptr], ptr @ndevs, i32 0, i32 %div.i.i.i29
  %23 = ptrtoint ptr %arrayidx.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i.i.i30, align 4
  %tobool.not.i.i31 = icmp eq ptr %24, null
  %25 = mul i32 %div.i.i.i29, 4
  %rem.i.i32.decomposed = sub i32 %.frozen50, %25
  %arrayidx.i.i33 = getelementptr %struct.nozomi, ptr %24, i32 0, i32 9, i32 %rem.i.i32.decomposed
  %cond.i.ph.i34 = select i1 %tobool.not.i.i31, ptr null, ptr %arrayidx.i.i33
  %RTS9.i35 = getelementptr inbounds %struct.port, ptr %cond.i.ph.i34, i32 0, i32 2, i32 1
  %26 = ptrtoint ptr %RTS9.i35 to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load10.i36 = load i8, ptr %RTS9.i35, align 1
  %bf.clear13.i37 = and i8 %bf.load10.i36, -3
  store i8 %bf.clear13.i37, ptr %RTS9.i35, align 1
  %update_flow_control15.i38 = getelementptr inbounds %struct.port, ptr %cond.i.ph.i34, i32 0, i32 1
  %27 = ptrtoint ptr %update_flow_control15.i38 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %update_flow_control15.i38, align 4
  %28 = load i32, ptr %index.i.i.i28, align 4
  %div.i.i39 = sdiv i32 %28, 4
  %arrayidx.i5.i40 = getelementptr [64 x ptr], ptr @ndevs, i32 0, i32 %div.i.i39
  %29 = ptrtoint ptr %arrayidx.i5.i40 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i5.i40, align 4
  br label %set_rts.exit49

get_port_by_tty.exit.i44:                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load1_noabort(i32 578)
  %bf.load.i42 = load i8, ptr inttoptr (i32 578 to ptr), align 2
  %bf.clear.i43 = and i8 %bf.load.i42, -3
  store i8 %bf.clear.i43, ptr inttoptr (i32 578 to ptr), align 2
  call void @__asan_store1_noabort(i32 576)
  store i8 1, ptr inttoptr (i32 576 to ptr), align 64
  br label %set_rts.exit49

set_rts.exit49:                                   ; preds = %get_port_by_tty.exit.i44, %get_dc_by_tty.exit.i.i41
  %cond.i7.i45 = phi ptr [ %30, %get_dc_by_tty.exit.i.i41 ], [ null, %get_port_by_tty.exit.i44 ]
  %last_ier.i.i46 = getelementptr inbounds %struct.nozomi, ptr %cond.i7.i45, i32 0, i32 5
  %31 = ptrtoint ptr %last_ier.i.i46 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %last_ier.i.i46, align 4
  %or10.i.i47 = or i16 %32, 4096
  store i16 %or10.i.i47, ptr %last_ier.i.i46, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !441
  tail call void @arm_heavy_mb() #12
  %33 = ptrtoint ptr %last_ier.i.i46 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %last_ier.i.i46, align 4
  %35 = tail call i16 @llvm.bswap.i16(i16 %34) #12
  %reg_ier.i.i48 = getelementptr inbounds %struct.nozomi, ptr %cond.i7.i45, i32 0, i32 4
  %36 = ptrtoint ptr %reg_ier.i.i48 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %reg_ier.i.i48, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %37, i16 %35) #12, !srcloc !393
  br label %if.end9

if.end9:                                          ; preds = %set_rts.exit49, %if.else.if.end9_crit_edge, %set_rts.exit
  %and10 = and i32 %set, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.else13, label %if.end9.if.end18.sink.split_crit_edge

if.end9.if.end18.sink.split_crit_edge:            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.sink.split

if.else13:                                        ; preds = %if.end9
  %and14 = and i32 %clear, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.else13.if.end18_crit_edge, label %if.else13.if.end18.sink.split_crit_edge

if.else13.if.end18.sink.split_crit_edge:          ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.sink.split

if.else13.if.end18_crit_edge:                     ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.end18.sink.split:                              ; preds = %if.else13.if.end18.sink.split_crit_edge, %if.end9.if.end18.sink.split_crit_edge
  %.sink = phi i32 [ 1, %if.end9.if.end18.sink.split_crit_edge ], [ 0, %if.else13.if.end18.sink.split_crit_edge ]
  tail call fastcc void @set_dtr(ptr noundef %tty, i32 noundef %.sink)
  br label %if.end18

if.end18:                                         ; preds = %if.end18.sink.split, %if.else13.if.end18_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spin_mutex, i32 noundef %call3) #12
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ntty_tiocgicount(ptr nocapture noundef readonly %tty, ptr nocapture noundef writeonly %icount) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %tty_icount = getelementptr inbounds %struct.port, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %tty_icount to i32
  call void @__asan_load4_noabort(i32 %2)
  %cnow.sroa.0.0.copyload = load i32, ptr %tty_icount, align 4
  %cnow.sroa.5.0.tty_icount.sroa_idx = getelementptr inbounds %struct.port, ptr %1, i32 0, i32 13, i32 1
  %3 = ptrtoint ptr %cnow.sroa.5.0.tty_icount.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %3)
  %cnow.sroa.5.0.copyload = load i32, ptr %cnow.sroa.5.0.tty_icount.sroa_idx, align 4
  %cnow.sroa.6.0.tty_icount.sroa_idx = getelementptr inbounds %struct.port, ptr %1, i32 0, i32 13, i32 2
  %4 = ptrtoint ptr %cnow.sroa.6.0.tty_icount.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %cnow.sroa.6.0.copyload = load i32, ptr %cnow.sroa.6.0.tty_icount.sroa_idx, align 4
  %cnow.sroa.7.0.tty_icount.sroa_idx = getelementptr inbounds %struct.port, ptr %1, i32 0, i32 13, i32 3
  %5 = ptrtoint ptr %cnow.sroa.7.0.tty_icount.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %5)
  %cnow.sroa.7.0.copyload = load i32, ptr %cnow.sroa.7.0.tty_icount.sroa_idx, align 4
  %cnow.sroa.8.0.tty_icount.sroa_idx = getelementptr inbounds %struct.port, ptr %1, i32 0, i32 13, i32 4
  %6 = ptrtoint ptr %cnow.sroa.8.0.tty_icount.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %cnow.sroa.8.0.copyload = load i32, ptr %cnow.sroa.8.0.tty_icount.sroa_idx, align 4
  %cnow.sroa.9.0.tty_icount.sroa_idx = getelementptr inbounds %struct.port, ptr %1, i32 0, i32 13, i32 5
  %7 = ptrtoint ptr %cnow.sroa.9.0.tty_icount.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %7)
  %cnow.sroa.9.0.copyload = load i32, ptr %cnow.sroa.9.0.tty_icount.sroa_idx, align 4
  %cnow.sroa.10.0.tty_icount.sroa_idx = getelementptr inbounds %struct.port, ptr %1, i32 0, i32 13, i32 6
  %8 = ptrtoint ptr %cnow.sroa.10.0.tty_icount.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %8)
  %cnow.sroa.10.0.copyload = load i32, ptr %cnow.sroa.10.0.tty_icount.sroa_idx, align 4
  %cnow.sroa.11.0.tty_icount.sroa_idx = getelementptr inbounds %struct.port, ptr %1, i32 0, i32 13, i32 7
  %9 = ptrtoint ptr %cnow.sroa.11.0.tty_icount.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %9)
  %cnow.sroa.11.0.copyload = load i32, ptr %cnow.sroa.11.0.tty_icount.sroa_idx, align 4
  %cnow.sroa.12.0.tty_icount.sroa_idx = getelementptr inbounds %struct.port, ptr %1, i32 0, i32 13, i32 8
  %10 = ptrtoint ptr %cnow.sroa.12.0.tty_icount.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %10)
  %cnow.sroa.12.0.copyload = load i32, ptr %cnow.sroa.12.0.tty_icount.sroa_idx, align 4
  %cnow.sroa.13.0.tty_icount.sroa_idx = getelementptr inbounds %struct.port, ptr %1, i32 0, i32 13, i32 9
  %11 = ptrtoint ptr %cnow.sroa.13.0.tty_icount.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %11)
  %cnow.sroa.13.0.copyload = load i32, ptr %cnow.sroa.13.0.tty_icount.sroa_idx, align 4
  %cnow.sroa.14.0.tty_icount.sroa_idx = getelementptr inbounds %struct.port, ptr %1, i32 0, i32 13, i32 10
  %12 = ptrtoint ptr %cnow.sroa.14.0.tty_icount.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %12)
  %cnow.sroa.14.0.copyload = load i32, ptr %cnow.sroa.14.0.tty_icount.sroa_idx, align 4
  %13 = ptrtoint ptr %icount to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %cnow.sroa.0.0.copyload, ptr %icount, align 4
  %dsr2 = getelementptr inbounds %struct.serial_icounter_struct, ptr %icount, i32 0, i32 1
  %14 = ptrtoint ptr %dsr2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %cnow.sroa.5.0.copyload, ptr %dsr2, align 4
  %rng3 = getelementptr inbounds %struct.serial_icounter_struct, ptr %icount, i32 0, i32 2
  %15 = ptrtoint ptr %rng3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %cnow.sroa.6.0.copyload, ptr %rng3, align 4
  %dcd4 = getelementptr inbounds %struct.serial_icounter_struct, ptr %icount, i32 0, i32 3
  %16 = ptrtoint ptr %dcd4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %cnow.sroa.7.0.copyload, ptr %dcd4, align 4
  %rx5 = getelementptr inbounds %struct.serial_icounter_struct, ptr %icount, i32 0, i32 4
  %17 = ptrtoint ptr %rx5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %cnow.sroa.9.0.copyload, ptr %rx5, align 4
  %tx6 = getelementptr inbounds %struct.serial_icounter_struct, ptr %icount, i32 0, i32 5
  %18 = ptrtoint ptr %tx6 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %cnow.sroa.8.0.copyload, ptr %tx6, align 4
  %frame7 = getelementptr inbounds %struct.serial_icounter_struct, ptr %icount, i32 0, i32 6
  %19 = ptrtoint ptr %frame7 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %cnow.sroa.10.0.copyload, ptr %frame7, align 4
  %overrun8 = getelementptr inbounds %struct.serial_icounter_struct, ptr %icount, i32 0, i32 7
  %20 = ptrtoint ptr %overrun8 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %cnow.sroa.12.0.copyload, ptr %overrun8, align 4
  %parity9 = getelementptr inbounds %struct.serial_icounter_struct, ptr %icount, i32 0, i32 8
  %21 = ptrtoint ptr %parity9 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %cnow.sroa.11.0.copyload, ptr %parity9, align 4
  %brk10 = getelementptr inbounds %struct.serial_icounter_struct, ptr %icount, i32 0, i32 9
  %22 = ptrtoint ptr %brk10 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %cnow.sroa.13.0.copyload, ptr %brk10, align 4
  %buf_overrun11 = getelementptr inbounds %struct.serial_icounter_struct, ptr %icount, i32 0, i32 10
  %23 = ptrtoint ptr %buf_overrun11 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %cnow.sroa.14.0.copyload, ptr %buf_overrun11, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_standard_install(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_port_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_close(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_in(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_hangup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_dtr(ptr noundef readonly %tty, i32 noundef %dtr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i.i = icmp eq ptr %tty, null
  br i1 %tobool.not.i.i, label %entry.get_port_by_tty.exit_crit_edge, label %get_dc_by_tty.exit.i

entry.get_port_by_tty.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_port_by_tty.exit

get_dc_by_tty.exit.i:                             ; preds = %entry
  %index.i.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 5
  %0 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index.i.i, align 4
  %.frozen = freeze i32 %1
  %div.i.i = sdiv i32 %.frozen, 4
  %arrayidx.i.i = getelementptr [64 x ptr], ptr @ndevs, i32 0, i32 %div.i.i
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %get_dc_by_tty.exit.i.get_port_by_tty.exit_crit_edge, label %cond.true.i

get_dc_by_tty.exit.i.get_port_by_tty.exit_crit_edge: ; preds = %get_dc_by_tty.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_port_by_tty.exit

cond.true.i:                                      ; preds = %get_dc_by_tty.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %4 = mul i32 %div.i.i, 4
  %rem.i.decomposed = sub i32 %.frozen, %4
  %arrayidx.i = getelementptr %struct.nozomi, ptr %3, i32 0, i32 9, i32 %rem.i.decomposed
  br label %get_port_by_tty.exit

get_port_by_tty.exit:                             ; preds = %cond.true.i, %get_dc_by_tty.exit.i.get_port_by_tty.exit_crit_edge, %entry.get_port_by_tty.exit_crit_edge
  %cond.i = phi ptr [ %arrayidx.i, %cond.true.i ], [ null, %get_dc_by_tty.exit.i.get_port_by_tty.exit_crit_edge ], [ null, %entry.get_port_by_tty.exit_crit_edge ]
  %5 = load i32, ptr @debug, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %get_port_by_tty.exit.do.end10_crit_edge, label %do.body1

get_port_by_tty.exit.do.end10_crit_edge:          ; preds = %get_port_by_tty.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

do.body1:                                         ; preds = %get_port_by_tty.exit
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_dtr.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@set_dtr, %do.end10)) #12
          to label %if.then7 [label %do.end10], !srcloc !395

if.then7:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #14
  %index = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 5
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @set_dtr.__UNIQUE_ID_ddebug277, ptr noundef nonnull @.str.157, i32 noundef 1517, ptr noundef nonnull @.str.156, i32 noundef %7, i32 noundef %dtr) #12
  br label %do.end10

do.end10:                                         ; preds = %if.then7, %do.body1, %get_port_by_tty.exit.do.end10_crit_edge
  %DTR = getelementptr inbounds %struct.port, ptr %cond.i, i32 0, i32 2, i32 1
  %8 = trunc i32 %dtr to i8
  %9 = ptrtoint ptr %DTR to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %DTR, align 1
  %bf.value = and i8 %8, 1
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, %bf.value
  store i8 %bf.set, ptr %DTR, align 1
  %update_flow_control = getelementptr inbounds %struct.port, ptr %cond.i, i32 0, i32 1
  %10 = ptrtoint ptr %update_flow_control to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %update_flow_control, align 4
  br i1 %tobool.not.i.i, label %do.end10.get_dc_by_tty.exit_crit_edge, label %cond.true.i18

do.end10.get_dc_by_tty.exit_crit_edge:            ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_dc_by_tty.exit

cond.true.i18:                                    ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #14
  %index.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 5
  %11 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %index.i, align 4
  %div.i = sdiv i32 %12, 4
  %arrayidx.i17 = getelementptr [64 x ptr], ptr @ndevs, i32 0, i32 %div.i
  %13 = ptrtoint ptr %arrayidx.i17 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i17, align 4
  br label %get_dc_by_tty.exit

get_dc_by_tty.exit:                               ; preds = %cond.true.i18, %do.end10.get_dc_by_tty.exit_crit_edge
  %cond.i19 = phi ptr [ %14, %cond.true.i18 ], [ null, %do.end10.get_dc_by_tty.exit_crit_edge ]
  %last_ier.i = getelementptr inbounds %struct.nozomi, ptr %cond.i19, i32 0, i32 5
  %15 = ptrtoint ptr %last_ier.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %last_ier.i, align 4
  %or10.i = or i16 %16, 4096
  store i16 %or10.i, ptr %last_ier.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !441
  tail call void @arm_heavy_mb() #12
  %17 = ptrtoint ptr %last_ier.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %last_ier.i, align 4
  %19 = tail call i16 @llvm.bswap.i16(i16 %18) #12
  %reg_ier.i = getelementptr inbounds %struct.nozomi, ptr %cond.i19, i32 0, i32 4
  %20 = ptrtoint ptr %reg_ier.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg_ier.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %21, i16 %19) #12, !srcloc !393
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 176)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 176)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !15, !17, !19, !21, !23, !25, !26, !27, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !60, !61, !62, !64, !65, !67, !68, !69, !71, !73, !74, !75, !76, !77, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !136, !137, !138, !140, !141, !143, !144, !146, !147, !148, !150, !151, !153, !154, !155, !157, !158, !160, !161, !162, !164, !165, !167, !168, !170, !171, !173, !174, !176, !177, !179, !180, !182, !183, !185, !186, !188, !189, !191, !192, !194, !195, !197, !198, !200, !201, !203, !204, !206, !207, !209, !210, !212, !213, !215, !216, !218, !219, !221, !222, !224, !225, !227, !228, !229, !230, !232, !233, !234, !236, !237, !238, !240, !241, !242, !244, !245, !247, !248, !250, !251, !253, !254, !256, !257, !259, !260, !262, !263, !265, !267, !268, !269, !270, !272, !274, !275, !276, !278, !279, !280, !281, !283, !284, !285, !286, !288, !289, !290, !292, !293, !294, !296, !297, !298, !300, !302, !303, !304, !306, !307, !308, !309, !311, !312, !313, !315, !316, !318, !320, !321, !323, !325, !327, !328, !329, !331, !332, !333, !335, !336, !337, !339, !340, !341, !343, !344, !345, !347, !349, !351, !352, !353, !354, !356, !357, !358, !360, !362, !363, !364, !366, !367, !368, !370, !371, !372, !374, !376, !377, !378, !380, !381}
!llvm.module.flags = !{!382, !383, !384, !385, !386, !387, !388, !389}
!llvm.ident = !{!390}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/tty/nozomi.c", i32 53, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype236, !1, !"__UNIQUE_ID_debugtype236", i1 false, i1 false}
!3 = !{ptr @__initcall__kmod_nozomi__282_1871_nozomi_init6, !4, !"__initcall__kmod_nozomi__282_1871_nozomi_init6", i1 false, i1 false}
!4 = !{!"../drivers/tty/nozomi.c", i32 1871, i32 1}
!5 = !{ptr @__exitcall_nozomi_exit, !6, !"__exitcall_nozomi_exit", i1 false, i1 false}
!6 = !{!"../drivers/tty/nozomi.c", i32 1872, i32 1}
!7 = !{ptr @__UNIQUE_ID_file283, !8, !"__UNIQUE_ID_file283", i1 false, i1 false}
!8 = !{!"../drivers/tty/nozomi.c", i32 1874, i32 1}
!9 = !{ptr @__UNIQUE_ID_license284, !8, !"__UNIQUE_ID_license284", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_description285, !11, !"__UNIQUE_ID_description285", i1 false, i1 false}
!11 = !{!"../drivers/tty/nozomi.c", i32 1875, i32 1}
!12 = !{ptr @ntty_driver, !13, !"ntty_driver", i1 false, i1 false}
!13 = !{!"../drivers/tty/nozomi.c", i32 367, i32 27}
!14 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!15 = !{ptr @debug, !16, !"debug", i1 false, i1 false}
!16 = !{!"../drivers/tty/nozomi.c", i32 52, i32 12}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/tty/nozomi.c", i32 1817, i32 10}
!19 = !{ptr @nozomi_driver, !20, !"nozomi_driver", i1 false, i1 false}
!20 = !{!"../drivers/tty/nozomi.c", i32 1816, i32 26}
!21 = !{ptr @nozomi_pci_tbl, !22, !"nozomi_pci_tbl", i1 false, i1 false}
!22 = !{!"../drivers/tty/nozomi.c", i32 359, i32 35}
!23 = !{ptr @.str.1, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/tty/nozomi.c", i32 1315, i32 3}
!25 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @nozomi_card_init._entry, !24, !"_entry", i1 false, i1 false}
!30 = !{ptr @nozomi_card_init._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/tty/nozomi.c", i32 1322, i32 3}
!33 = !{ptr @nozomi_card_init._entry.6, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @nozomi_card_init._entry_ptr.8, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/tty/nozomi.c", i32 1331, i32 3}
!37 = !{ptr @nozomi_card_init._entry.9, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @nozomi_card_init._entry_ptr.11, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/tty/nozomi.c", i32 1337, i32 3}
!41 = !{ptr @nozomi_card_init._entry.12, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @nozomi_card_init._entry_ptr.14, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/tty/nozomi.c", i32 1347, i32 3}
!45 = !{ptr @nozomi_card_init._entry.15, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @nozomi_card_init._entry_ptr.17, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/tty/nozomi.c", i32 1354, i32 3}
!49 = !{ptr @nozomi_card_init._entry.18, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @nozomi_card_init._entry_ptr.20, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/tty/nozomi.c", i32 1362, i32 4}
!53 = !{ptr @nozomi_card_init._entry.21, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @nozomi_card_init._entry_ptr.23, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @nozomi_card_init.__key, !56, !"__key", i1 false, i1 false}
!56 = !{!"../drivers/tty/nozomi.c", i32 1369, i32 2}
!57 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/tty/nozomi.c", i32 1380, i32 3}
!60 = !{ptr @nozomi_card_init._entry.25, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @nozomi_card_init._entry_ptr.27, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/tty/nozomi.c", i32 1384, i32 2}
!64 = !{ptr @nozomi_card_init.__UNIQUE_ID_ddebug275, !63, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!65 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/tty/nozomi.c", i32 1410, i32 4}
!67 = !{ptr @nozomi_card_init._entry.29, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @nozomi_card_init._entry_ptr.31, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @ndevs, !70, !"ndevs", i1 false, i1 false}
!70 = !{!"../drivers/tty/nozomi.c", i32 366, i32 23}
!71 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/tty/nozomi.c", i32 1244, i32 2}
!73 = !{ptr @.str.33, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @nozomi_get_card_type._entry, !72, !"_entry", i1 false, i1 false}
!76 = !{ptr @nozomi_get_card_type._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @nozomi_setup_private_data.__key, !78, !"__key", i1 false, i1 false}
!78 = !{!"../drivers/tty/nozomi.c", i32 1264, i32 3}
!79 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.36, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/tty/nozomi.c", i32 1133, i32 2}
!82 = !{ptr @.str.37, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @interrupt_handler.__UNIQUE_ID_ddebug273, !81, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!84 = !{ptr @.str.38, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/tty/nozomi.c", i32 1140, i32 4}
!86 = !{ptr @interrupt_handler._entry, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @interrupt_handler._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.39, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/tty/nozomi.c", i32 1149, i32 3}
!90 = !{ptr @interrupt_handler.__UNIQUE_ID_ddebug274, !89, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!91 = !{ptr @.str.41, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/tty/nozomi.c", i32 1166, i32 4}
!93 = !{ptr @interrupt_handler._entry.40, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @interrupt_handler._entry_ptr.42, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.44, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/tty/nozomi.c", i32 1172, i32 4}
!97 = !{ptr @interrupt_handler._entry.43, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @interrupt_handler._entry_ptr.45, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.47, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/tty/nozomi.c", i32 1180, i32 4}
!101 = !{ptr @interrupt_handler._entry.46, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @interrupt_handler._entry_ptr.48, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @interrupt2str.buf, !104, !"buf", i1 false, i1 false}
!104 = !{!"../drivers/tty/nozomi.c", i32 825, i32 14}
!105 = !{ptr @.str.49, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/tty/nozomi.c", i32 829, i32 34}
!107 = !{ptr @.str.50, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/tty/nozomi.c", i32 831, i32 46}
!109 = !{ptr @.str.51, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/tty/nozomi.c", i32 833, i32 46}
!111 = !{ptr @.str.52, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/tty/nozomi.c", i32 835, i32 46}
!113 = !{ptr @.str.53, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/tty/nozomi.c", i32 837, i32 46}
!115 = !{ptr @.str.54, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/tty/nozomi.c", i32 839, i32 46}
!117 = !{ptr @.str.55, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/tty/nozomi.c", i32 842, i32 46}
!119 = !{ptr @.str.56, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/tty/nozomi.c", i32 845, i32 46}
!121 = !{ptr @.str.57, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/tty/nozomi.c", i32 847, i32 46}
!123 = !{ptr @.str.58, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/tty/nozomi.c", i32 850, i32 46}
!125 = !{ptr @.str.59, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/tty/nozomi.c", i32 852, i32 46}
!127 = !{ptr @.str.60, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/tty/nozomi.c", i32 855, i32 46}
!129 = !{ptr @.str.61, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/tty/nozomi.c", i32 857, i32 46}
!131 = !{ptr @.str.62, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/tty/nozomi.c", i32 860, i32 46}
!133 = !{ptr @.str.63, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/tty/nozomi.c", i32 617, i32 3}
!135 = !{ptr @.str.64, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @nozomi_read_config_table._entry, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @nozomi_read_config_table._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.65, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/tty/nozomi.c", i32 625, i32 3}
!140 = !{ptr @nozomi_read_config_table.__UNIQUE_ID_ddebug259, !139, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!141 = !{ptr @.str.66, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/tty/nozomi.c", i32 632, i32 3}
!143 = !{ptr @nozomi_read_config_table.__UNIQUE_ID_ddebug260, !142, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!144 = !{ptr @.str.68, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/tty/nozomi.c", i32 648, i32 3}
!146 = !{ptr @nozomi_read_config_table._entry.67, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @nozomi_read_config_table._entry_ptr.69, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.70, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/tty/nozomi.c", i32 655, i32 3}
!150 = !{ptr @nozomi_read_config_table.__UNIQUE_ID_ddebug261, !149, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!151 = !{ptr @.str.72, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/tty/nozomi.c", i32 657, i32 3}
!153 = !{ptr @nozomi_read_config_table._entry.71, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @nozomi_read_config_table._entry_ptr.73, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.74, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/tty/nozomi.c", i32 676, i32 3}
!157 = !{ptr @nozomi_read_config_table.__UNIQUE_ID_ddebug262, !156, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!158 = !{ptr @.str.75, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/tty/nozomi.c", i32 564, i32 2}
!160 = !{ptr @.str.76, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @dump_table.__UNIQUE_ID_ddebug237, !159, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!162 = !{ptr @.str.77, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/tty/nozomi.c", i32 565, i32 2}
!164 = !{ptr @dump_table.__UNIQUE_ID_ddebug238, !163, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!165 = !{ptr @.str.78, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/tty/nozomi.c", i32 566, i32 2}
!167 = !{ptr @dump_table.__UNIQUE_ID_ddebug239, !166, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!168 = !{ptr @.str.79, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/tty/nozomi.c", i32 568, i32 2}
!170 = !{ptr @dump_table.__UNIQUE_ID_ddebug240, !169, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!171 = !{ptr @.str.80, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/tty/nozomi.c", i32 569, i32 2}
!173 = !{ptr @dump_table.__UNIQUE_ID_ddebug241, !172, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!174 = !{ptr @.str.81, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/tty/nozomi.c", i32 570, i32 2}
!176 = !{ptr @dump_table.__UNIQUE_ID_ddebug242, !175, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!177 = !{ptr @.str.82, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/tty/nozomi.c", i32 571, i32 2}
!179 = !{ptr @dump_table.__UNIQUE_ID_ddebug243, !178, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!180 = !{ptr @.str.83, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/tty/nozomi.c", i32 573, i32 2}
!182 = !{ptr @dump_table.__UNIQUE_ID_ddebug244, !181, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!183 = !{ptr @.str.84, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/tty/nozomi.c", i32 574, i32 2}
!185 = !{ptr @dump_table.__UNIQUE_ID_ddebug245, !184, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!186 = !{ptr @.str.85, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/tty/nozomi.c", i32 576, i32 2}
!188 = !{ptr @dump_table.__UNIQUE_ID_ddebug246, !187, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!189 = !{ptr @.str.86, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/tty/nozomi.c", i32 578, i32 2}
!191 = !{ptr @dump_table.__UNIQUE_ID_ddebug247, !190, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!192 = !{ptr @.str.87, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/tty/nozomi.c", i32 580, i32 2}
!194 = !{ptr @dump_table.__UNIQUE_ID_ddebug248, !193, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!195 = !{ptr @.str.88, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/tty/nozomi.c", i32 582, i32 2}
!197 = !{ptr @dump_table.__UNIQUE_ID_ddebug249, !196, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!198 = !{ptr @.str.89, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/tty/nozomi.c", i32 584, i32 2}
!200 = !{ptr @dump_table.__UNIQUE_ID_ddebug250, !199, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!201 = !{ptr @.str.90, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/tty/nozomi.c", i32 586, i32 2}
!203 = !{ptr @dump_table.__UNIQUE_ID_ddebug251, !202, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!204 = !{ptr @.str.91, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/tty/nozomi.c", i32 588, i32 2}
!206 = !{ptr @dump_table.__UNIQUE_ID_ddebug252, !205, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!207 = !{ptr @.str.92, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/tty/nozomi.c", i32 590, i32 2}
!209 = !{ptr @dump_table.__UNIQUE_ID_ddebug253, !208, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!210 = !{ptr @.str.93, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/tty/nozomi.c", i32 592, i32 2}
!212 = !{ptr @dump_table.__UNIQUE_ID_ddebug254, !211, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!213 = !{ptr @.str.94, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/tty/nozomi.c", i32 594, i32 2}
!215 = !{ptr @dump_table.__UNIQUE_ID_ddebug255, !214, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!216 = !{ptr @.str.95, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/tty/nozomi.c", i32 596, i32 2}
!218 = !{ptr @dump_table.__UNIQUE_ID_ddebug256, !217, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!219 = !{ptr @.str.96, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/tty/nozomi.c", i32 598, i32 2}
!221 = !{ptr @dump_table.__UNIQUE_ID_ddebug257, !220, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!222 = !{ptr @.str.97, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/tty/nozomi.c", i32 600, i32 2}
!224 = !{ptr @dump_table.__UNIQUE_ID_ddebug258, !223, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!225 = !{ptr @.str.98, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/tty/nozomi.c", i32 976, i32 3}
!227 = !{ptr @.str.99, !226, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @port2ctrl._entry, !226, !"_entry", i1 false, i1 false}
!229 = !{ptr @port2ctrl._entry_ptr, !226, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.100, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/tty/nozomi.c", i32 881, i32 3}
!232 = !{ptr @.str.101, !231, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @receive_flow_control.__UNIQUE_ID_ddebug265, !231, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!234 = !{ptr @.str.102, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/tty/nozomi.c", i32 906, i32 4}
!236 = !{ptr @receive_flow_control._entry, !235, !"_entry", i1 false, i1 false}
!237 = !{ptr @receive_flow_control._entry_ptr, !235, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.104, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/tty/nozomi.c", i32 910, i32 3}
!240 = !{ptr @receive_flow_control._entry.103, !239, !"_entry", i1 false, i1 false}
!241 = !{ptr @receive_flow_control._entry_ptr.105, !239, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @.str.106, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/tty/nozomi.c", i32 915, i32 2}
!244 = !{ptr @receive_flow_control.__UNIQUE_ID_ddebug266, !243, !"__UNIQUE_ID_ddebug266", i1 false, i1 false}
!245 = !{ptr @.str.107, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/tty/nozomi.c", i32 922, i32 3}
!247 = !{ptr @receive_flow_control.__UNIQUE_ID_ddebug267, !246, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!248 = !{ptr @.str.108, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/tty/nozomi.c", i32 929, i32 4}
!250 = !{ptr @receive_flow_control.__UNIQUE_ID_ddebug268, !249, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!251 = !{ptr @.str.109, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/tty/nozomi.c", i32 931, i32 4}
!253 = !{ptr @receive_flow_control.__UNIQUE_ID_ddebug269, !252, !"__UNIQUE_ID_ddebug269", i1 false, i1 false}
!254 = !{ptr @.str.110, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/tty/nozomi.c", i32 935, i32 4}
!256 = !{ptr @receive_flow_control.__UNIQUE_ID_ddebug270, !255, !"__UNIQUE_ID_ddebug270", i1 false, i1 false}
!257 = !{ptr @.str.111, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/tty/nozomi.c", i32 940, i32 3}
!259 = !{ptr @receive_flow_control.__UNIQUE_ID_ddebug271, !258, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!260 = !{ptr @.str.112, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/tty/nozomi.c", i32 955, i32 2}
!262 = !{ptr @receive_flow_control.__UNIQUE_ID_ddebug272, !261, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!263 = !{ptr @disable_transmit_ul.mask, !264, !"mask", i1 false, i1 false}
!264 = !{!"../drivers/tty/nozomi.c", i32 698, i32 19}
!265 = !{ptr @.str.113, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/tty/nozomi.c", i32 705, i32 3}
!267 = !{ptr @.str.114, !266, !"<string literal>", i1 false, i1 false}
!268 = !{ptr @disable_transmit_ul._entry, !266, !"_entry", i1 false, i1 false}
!269 = !{ptr @disable_transmit_ul._entry_ptr, !266, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @enable_transmit_ul.mask, !271, !"mask", i1 false, i1 false}
!271 = !{!"../drivers/tty/nozomi.c", i32 685, i32 19}
!272 = !{ptr @.str.115, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/tty/nozomi.c", i32 691, i32 3}
!274 = !{ptr @enable_transmit_ul._entry, !273, !"_entry", i1 false, i1 false}
!275 = !{ptr @enable_transmit_ul._entry_ptr, !273, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.116, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/tty/nozomi.c", i32 1043, i32 3}
!278 = !{ptr @.str.117, !277, !"<string literal>", i1 false, i1 false}
!279 = !{ptr @handle_data_dl._entry, !277, !"_entry", i1 false, i1 false}
!280 = !{ptr @handle_data_dl._entry_ptr, !277, !"_entry_ptr", i1 false, i1 false}
!281 = !{ptr @.str.118, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/tty/nozomi.c", i32 1102, i32 3}
!283 = !{ptr @.str.119, !282, !"<string literal>", i1 false, i1 false}
!284 = !{ptr @handle_data_ul._entry, !282, !"_entry", i1 false, i1 false}
!285 = !{ptr @handle_data_ul._entry_ptr, !282, !"_entry_ptr", i1 false, i1 false}
!286 = !{ptr @.str.120, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/tty/nozomi.c", i32 753, i32 3}
!288 = !{ptr @.str.121, !287, !"<string literal>", i1 false, i1 false}
!289 = !{ptr @send_data.__UNIQUE_ID_ddebug263, !287, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!290 = !{ptr @.str.122, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/tty/nozomi.c", i32 782, i32 3}
!292 = !{ptr @.str.123, !291, !"<string literal>", i1 false, i1 false}
!293 = !{ptr @receive_data.__UNIQUE_ID_ddebug264, !291, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!294 = !{ptr @.str.124, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/tty/nozomi.c", i32 792, i32 3}
!296 = !{ptr @receive_data._entry, !295, !"_entry", i1 false, i1 false}
!297 = !{ptr @receive_data._entry_ptr, !295, !"_entry_ptr", i1 false, i1 false}
!298 = !{ptr @disable_transmit_dl.mask, !299, !"mask", i1 false, i1 false}
!299 = !{!"../drivers/tty/nozomi.c", i32 725, i32 19}
!300 = !{ptr @.str.125, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/tty/nozomi.c", i32 732, i32 3}
!302 = !{ptr @disable_transmit_dl._entry, !301, !"_entry", i1 false, i1 false}
!303 = !{ptr @disable_transmit_dl._entry_ptr, !301, !"_entry_ptr", i1 false, i1 false}
!304 = !{ptr @.str.126, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/tty/nozomi.c", i32 1288, i32 3}
!306 = !{ptr @.str.127, !305, !"<string literal>", i1 false, i1 false}
!307 = !{ptr @make_sysfs_files._entry, !305, !"_entry", i1 false, i1 false}
!308 = !{ptr @make_sysfs_files._entry_ptr, !305, !"_entry_ptr", i1 false, i1 false}
!309 = !{ptr @.str.129, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/tty/nozomi.c", i32 1291, i32 3}
!311 = !{ptr @make_sysfs_files._entry.128, !310, !"_entry", i1 false, i1 false}
!312 = !{ptr @make_sysfs_files._entry_ptr.130, !310, !"_entry_ptr", i1 false, i1 false}
!313 = !{ptr @.str.131, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/tty/nozomi.c", i32 1274, i32 8}
!315 = !{ptr @dev_attr_card_type, !314, !"dev_attr_card_type", i1 false, i1 false}
!316 = !{ptr @.str.132, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/tty/nozomi.c", i32 1272, i32 22}
!318 = !{ptr @.str.133, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/tty/nozomi.c", i32 1283, i32 8}
!320 = !{ptr @dev_attr_open_ttys, !319, !"dev_attr_open_ttys", i1 false, i1 false}
!321 = !{ptr @.str.134, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/tty/nozomi.c", i32 1281, i32 22}
!323 = !{ptr @noz_tty_port_ops, !324, !"noz_tty_port_ops", i1 false, i1 false}
!324 = !{!"../drivers/tty/nozomi.c", i32 1793, i32 41}
!325 = !{ptr @.str.135, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/tty/nozomi.c", i32 1576, i32 2}
!327 = !{ptr @.str.136, !326, !"<string literal>", i1 false, i1 false}
!328 = !{ptr @ntty_shutdown.__UNIQUE_ID_ddebug279, !326, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!329 = !{ptr @.str.137, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/tty/nozomi.c", i32 1582, i32 2}
!331 = !{ptr @ntty_shutdown._entry, !330, !"_entry", i1 false, i1 false}
!332 = !{ptr @ntty_shutdown._entry_ptr, !330, !"_entry_ptr", i1 false, i1 false}
!333 = !{ptr @.str.138, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/tty/nozomi.c", i32 1554, i32 2}
!335 = !{ptr @.str.139, !334, !"<string literal>", i1 false, i1 false}
!336 = !{ptr @ntty_activate.__UNIQUE_ID_ddebug278, !334, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!337 = !{ptr @.str.140, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/tty/nozomi.c", i32 1560, i32 2}
!339 = !{ptr @ntty_activate._entry, !338, !"_entry", i1 false, i1 false}
!340 = !{ptr @ntty_activate._entry_ptr, !338, !"_entry_ptr", i1 false, i1 false}
!341 = !{ptr @.str.141, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/tty/nozomi.c", i32 1478, i32 2}
!343 = !{ptr @.str.142, !342, !"<string literal>", i1 false, i1 false}
!344 = !{ptr @nozomi_card_exit.__UNIQUE_ID_ddebug276, !342, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!345 = !{ptr @.str.143, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/tty/nozomi.c", i32 1832, i32 29}
!347 = !{ptr @.str.144, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/tty/nozomi.c", i32 1833, i32 22}
!349 = !{ptr @.str.145, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/tty/nozomi.c", i32 1846, i32 3}
!351 = !{ptr @.str.146, !350, !"<string literal>", i1 false, i1 false}
!352 = !{ptr @nozomi_init._entry, !350, !"_entry", i1 false, i1 false}
!353 = !{ptr @nozomi_init._entry_ptr, !350, !"_entry_ptr", i1 false, i1 false}
!354 = !{ptr @.str.148, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/tty/nozomi.c", i32 1852, i32 3}
!356 = !{ptr @nozomi_init._entry.147, !355, !"_entry", i1 false, i1 false}
!357 = !{ptr @nozomi_init._entry_ptr.149, !355, !"_entry_ptr", i1 false, i1 false}
!358 = !{ptr @tty_ops, !359, !"tty_ops", i1 false, i1 false}
!359 = !{!"../drivers/tty/nozomi.c", i32 1798, i32 36}
!360 = !{ptr @.str.150, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/tty/nozomi.c", i32 1619, i32 4}
!362 = !{ptr @.str.151, !361, !"<string literal>", i1 false, i1 false}
!363 = !{ptr @ntty_write.__UNIQUE_ID_ddebug280, !361, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!364 = !{ptr @.str.152, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/tty/nozomi.c", i32 1622, i32 4}
!366 = !{ptr @ntty_write._entry, !365, !"_entry", i1 false, i1 false}
!367 = !{ptr @ntty_write._entry_ptr, !365, !"_entry_ptr", i1 false, i1 false}
!368 = !{ptr @.str.153, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/tty/nozomi.c", i32 1744, i32 3}
!370 = !{ptr @.str.154, !369, !"<string literal>", i1 false, i1 false}
!371 = !{ptr @ntty_ioctl.__UNIQUE_ID_ddebug281, !369, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!372 = !{ptr @enable_transmit_dl.mask, !373, !"mask", i1 false, i1 false}
!373 = !{!"../drivers/tty/nozomi.c", i32 712, i32 19}
!374 = !{ptr @.str.155, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/tty/nozomi.c", i32 718, i32 3}
!376 = !{ptr @enable_transmit_dl._entry, !375, !"_entry", i1 false, i1 false}
!377 = !{ptr @enable_transmit_dl._entry_ptr, !375, !"_entry_ptr", i1 false, i1 false}
!378 = !{ptr @.str.156, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/tty/nozomi.c", i32 1517, i32 2}
!380 = !{ptr @.str.157, !379, !"<string literal>", i1 false, i1 false}
!381 = !{ptr @set_dtr.__UNIQUE_ID_ddebug277, !379, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!382 = !{i32 1, !"wchar_size", i32 2}
!383 = !{i32 1, !"min_enum_size", i32 4}
!384 = !{i32 8, !"branch-target-enforcement", i32 0}
!385 = !{i32 8, !"sign-return-address", i32 0}
!386 = !{i32 8, !"sign-return-address-all", i32 0}
!387 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!388 = !{i32 7, !"uwtable", i32 1}
!389 = !{i32 7, !"frame-pointer", i32 2}
!390 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!391 = !{!"branch_weights", i32 1, i32 2000}
!392 = !{i64 2154923820}
!393 = !{i64 5024292}
!394 = !{!"branch_weights", i32 2000, i32 1}
!395 = !{i64 2148736610, i64 2148736615, i64 2148736628, i64 2148736672, i64 2148736706, i64 2148736727}
!396 = !{i64 2152566484}
!397 = !{i64 2154930942}
!398 = !{i64 2154734977}
!399 = !{i64 2154934170}
!400 = !{i64 5024492}
!401 = !{i64 2154883699}
!402 = !{i64 2154886987}
!403 = !{i64 2154889403}
!404 = !{i64 2154892305}
!405 = !{i64 2154892719}
!406 = !{i64 2154893121}
!407 = !{i64 2154893542}
!408 = !{i64 2154876228}
!409 = !{i64 2154876642}
!410 = !{i64 2154877072}
!411 = !{i64 2154877527}
!412 = !{i64 2154877941}
!413 = !{i64 2154878371}
!414 = !{i64 2154878826}
!415 = !{i64 2154879240}
!416 = !{i64 2154879670}
!417 = !{i64 2154880125}
!418 = !{i64 2154880539}
!419 = !{i64 2154880969}
!420 = !{i64 2154881435}
!421 = !{i64 2154898804}
!422 = !{i64 2154899218}
!423 = !{i64 2154899620}
!424 = !{i64 2154900041}
!425 = !{i64 2154900450}
!426 = !{i64 2154900864}
!427 = !{i64 2154901266}
!428 = !{i64 2154901687}
!429 = !{i64 2154902096}
!430 = !{i64 2154902510}
!431 = !{i64 2154902912}
!432 = !{i64 2154733575}
!433 = !{i64 5025330}
!434 = !{i64 2154734574}
!435 = !{i64 2154810839}
!436 = !{i64 2154735708}
!437 = !{i64 5024912}
!438 = !{i64 2154817609}
!439 = !{i64 2154731577}
!440 = !{i64 2154822913}
!441 = !{i64 2154820830}
!442 = !{i64 2154872972}
!443 = !{i64 2154873357}
!444 = !{i64 2154873742}
!445 = !{i64 2154874127}
!446 = !{i64 2154837230}
!447 = !{i64 2154831198}
!448 = !{i64 2154732576}
!449 = !{i64 2154948161}
!450 = !{i64 2154942312}
!451 = !{i64 2154825025}
