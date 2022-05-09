; ModuleID = '/llk/IR_all_yes/drivers/usb/host/xhci-dbgtty.c_pt.bc'
source_filename = "../drivers/usb/host/xhci-dbgtty.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dbc_driver = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tty_port_operations = type { ptr, ptr, ptr, ptr, ptr }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.tty_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xhci_hcd = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.spinlock, i8, i16, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.list_head, i32, %struct.delayed_work, %struct.completion, ptr, ptr, %struct.xhci_erst, ptr, %struct.list_head, %struct.mutex, ptr, [256 x ptr], ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.s3_save, i64, i32, i32, ptr, %struct.xhci_hub, %struct.xhci_hub, i8, ptr, i32, ptr, i32, %struct.timer_list, i32, i16, ptr, ptr, %struct.list_head, ptr, [4 x i8], [0 x i32] }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.xhci_erst = type { ptr, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.s3_save = type { i32, i32, i64, i32, i32, i32, i32, i64, i64 }
%struct.xhci_hub = type { ptr, i32, ptr, %struct.xhci_bus_state, i8, i8 }
%struct.xhci_bus_state = type { i32, i32, i32, i32, i32, [31 x i32], i32, i32, [31 x %struct.completion], [31 x %struct.completion] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.tty_driver = type { i32, %struct.kref, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, %struct.ktermios, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.xhci_dbc = type { %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.xhci_erst, ptr, ptr, i32, i32, i32, %struct.delayed_work, i8, [2 x %struct.dbc_ep], ptr, ptr }
%struct.dbc_ep = type { ptr, %struct.list_head, ptr, i8 }
%struct.dbc_port = type { %struct.tty_port, %struct.spinlock, %struct.list_head, %struct.list_head, i32, %struct.tasklet_struct, %struct.list_head, %struct.kfifo, i8 }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.37, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.37 = type { ptr }
%struct.llist_head = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.70, i32 }
%union.anon.70 = type { ptr }
%struct.kfifo = type { %union.anon.75, [0 x i8] }
%union.anon.75 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.dbc_request = type { ptr, i32, i32, ptr, %struct.list_head, i32, i32, ptr, %struct.list_head, i32, ptr, i8 }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.38, %struct.anon.39, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.38 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.39 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }

@dbc_driver = internal constant { %struct.dbc_driver, [24 x i8] } { %struct.dbc_driver { ptr @xhci_dbc_tty_register_device, ptr @xhci_dbc_tty_unregister_device }, [24 x i8] zeroinitializer }, align 32
@dbc_tty_driver = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@xhci_dbc_tty_register_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 445, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"can't register tty port, err %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"xhci_dbc_tty_register_device\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/usb/host/xhci-dbgtty.c\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@xhci_dbc_tty_register_device._entry_ptr = internal global ptr @xhci_dbc_tty_register_device._entry, section ".printk_index", align 4
@xhci_dbc_tty_init_port.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&port->port_lock\00", [47 x i8] zeroinitializer }, align 32
@dbc_port_ops = internal constant { %struct.tty_port_operations, [44 x i8] } { %struct.tty_port_operations { ptr null, ptr null, ptr null, ptr @dbc_port_activate, ptr null }, [44 x i8] zeroinitializer }, align 32
@dbc_rx_push._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 317, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\014ttyDBC0: unexpected RX status %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dbc_rx_push\00", [20 x i8] zeroinitializer }, align 32
@dbc_rx_push._entry_ptr = internal global ptr @dbc_rx_push._entry, section ".printk_index", align 4
@dbc_rx_push._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 354, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\014ttyDBC0: RX not scheduled?\0A\00", [34 x i8] zeroinitializer }, align 32
@dbc_rx_push._entry_ptr.10 = internal global ptr @dbc_rx_push._entry.8, section ".printk_index", align 4
@dbc_write_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 130, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"unexpected write complete status %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dbc_write_complete\00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@dbc_write_complete._entry_ptr = internal global ptr @dbc_write_complete._entry, section ".printk_index", align 4
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dbc_serial\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ttyDBC\00", [25 x i8] zeroinitializer }, align 32
@tty_std_termios = external dso_local local_unnamed_addr global %struct.ktermios, align 4
@dbc_tty_ops = internal constant { %struct.tty_operations, [48 x i8] } { %struct.tty_operations { ptr null, ptr @dbc_tty_install, ptr null, ptr @dbc_tty_open, ptr @dbc_tty_close, ptr null, ptr null, ptr @dbc_tty_write, ptr @dbc_tty_put_char, ptr @dbc_tty_flush_chars, ptr @dbc_tty_write_room, ptr @dbc_tty_chars_in_buffer, ptr null, ptr null, ptr null, ptr null, ptr @dbc_tty_unthrottle, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@dbc_tty_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 541, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013Can't register dbc tty driver\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dbc_tty_init\00", [19 x i8] zeroinitializer }, align 32
@dbc_tty_init._entry_ptr = internal global ptr @dbc_tty_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967188]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967188]
@___asan_gen_.19 = private unnamed_addr constant [11 x i8] c"dbc_driver\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 466, i32 32 }
@___asan_gen_.22 = private unnamed_addr constant [15 x i8] c"dbc_tty_driver\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 20, i32 27 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 445, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 384, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant [13 x i8] c"dbc_port_ops\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 376, i32 41 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 316, i32 4 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 354, i32 5 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 129, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 526, i32 32 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 527, i32 25 }
@___asan_gen_.85 = private unnamed_addr constant [12 x i8] c"dbc_tty_ops\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 279, i32 36 }
@___asan_gen_.88 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.94 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.95 = private constant [34 x i8] c"../drivers/usb/host/xhci-dbgtty.c\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 541, i32 3 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @dbc_rx_push._entry, ptr @dbc_rx_push._entry.8, ptr @dbc_rx_push._entry_ptr, ptr @dbc_rx_push._entry_ptr.10, ptr @dbc_tty_init._entry, ptr @dbc_tty_init._entry_ptr, ptr @dbc_write_complete._entry, ptr @dbc_write_complete._entry_ptr, ptr @xhci_dbc_tty_register_device._entry, ptr @xhci_dbc_tty_register_device._entry_ptr, ptr @dbc_driver, ptr @dbc_tty_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @xhci_dbc_tty_init_port.__key, ptr @.str.5, ptr @dbc_port_ops, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @dbc_tty_ops, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbc_driver to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbc_tty_driver to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xhci_dbc_tty_register_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xhci_dbc_tty_init_port.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbc_port_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbc_rx_push._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbc_rx_push._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbc_write_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbc_tty_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbc_tty_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xhci_dbc_tty_probe(ptr nocapture noundef readonly %xhci) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dbc1 = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 68
  %0 = ptrtoint ptr %dbc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dbc1, align 8
  %call.i = tail call ptr @__tty_alloc_driver(i32 noundef 1, ptr noundef null, i32 noundef 12) #5
  store ptr %call.i, ptr @dbc_tty_driver, align 4
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %dbc_tty_init.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  %driver_name.i = getelementptr inbounds %struct.tty_driver, ptr %call.i, i32 0, i32 4
  %2 = ptrtoint ptr %driver_name.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str.14, ptr %driver_name.i, align 4
  %name.i = getelementptr inbounds %struct.tty_driver, ptr %call.i, i32 0, i32 5
  %3 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.15, ptr %name.i, align 4
  %type.i = getelementptr inbounds %struct.tty_driver, ptr %call.i, i32 0, i32 10
  %4 = ptrtoint ptr %type.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 3, ptr %type.i, align 4
  %subtype.i = getelementptr inbounds %struct.tty_driver, ptr %call.i, i32 0, i32 11
  %5 = ptrtoint ptr %subtype.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 1, ptr %subtype.i, align 2
  %init_termios.i = getelementptr inbounds %struct.tty_driver, ptr %call.i, i32 0, i32 12
  %6 = call ptr @memcpy(ptr %init_termios.i, ptr @tty_std_termios, i32 36)
  %c_cflag.i = getelementptr inbounds %struct.tty_driver, ptr %call.i, i32 0, i32 12, i32 2
  %7 = ptrtoint ptr %c_cflag.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 3261, ptr %c_cflag.i, align 4
  %c_ispeed.i = getelementptr inbounds %struct.tty_driver, ptr %call.i, i32 0, i32 12, i32 6
  %8 = ptrtoint ptr %c_ispeed.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 9600, ptr %c_ispeed.i, align 4
  %c_ospeed.i = getelementptr inbounds %struct.tty_driver, ptr %call.i, i32 0, i32 12, i32 7
  %9 = ptrtoint ptr %c_ospeed.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 9600, ptr %c_ospeed.i, align 4
  %ops.i.i = getelementptr inbounds %struct.tty_driver, ptr %call.i, i32 0, i32 20
  %10 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @dbc_tty_ops, ptr %ops.i.i, align 4
  %call6.i = tail call i32 @tty_register_driver(ptr noundef %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool.not.i, label %if.end, label %dbc_tty_init.exit.thread18

dbc_tty_init.exit.thread18:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #8
  %11 = load ptr, ptr @dbc_tty_driver, align 4
  tail call void @tty_driver_kref_put(ptr noundef %11) #5
  br label %cleanup

dbc_tty_init.exit:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 696) #9
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %14 = load ptr, ptr @dbc_tty_driver, align 4
  %tobool.not.i13 = icmp eq ptr %14, null
  br i1 %tobool.not.i13, label %if.then4.cleanup_crit_edge, label %if.then.i14

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i14:                                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @tty_unregister_driver(ptr noundef nonnull %14) #5
  %15 = load ptr, ptr @dbc_tty_driver, align 4
  tail call void @tty_driver_kref_put(ptr noundef %15) #5
  store ptr null, ptr @dbc_tty_driver, align 4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %driver = getelementptr inbounds %struct.xhci_dbc, ptr %1, i32 0, i32 16
  %16 = ptrtoint ptr %driver to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @dbc_driver, ptr %driver, align 4
  %priv = getelementptr inbounds %struct.xhci_dbc, ptr %1, i32 0, i32 17
  %17 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i, ptr %priv, align 4
  %18 = load ptr, ptr @dbc_tty_driver, align 4
  %driver_state = getelementptr inbounds %struct.tty_driver, ptr %18, i32 0, i32 19
  %19 = ptrtoint ptr %driver_state to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7.i.i, ptr %driver_state, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then.i14, %if.then4.cleanup_crit_edge, %dbc_tty_init.exit, %dbc_tty_init.exit.thread18
  %retval.0 = phi i32 [ 0, %if.end5 ], [ %12, %dbc_tty_init.exit ], [ %call6.i, %dbc_tty_init.exit.thread18 ], [ -12, %if.then4.cleanup_crit_edge ], [ -12, %if.then.i14 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xhci_dbc_tty_remove(ptr nocapture noundef %dbc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.xhci_dbc, ptr %dbc, i32 0, i32 17
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %driver = getelementptr inbounds %struct.xhci_dbc, ptr %dbc, i32 0, i32 16
  %2 = ptrtoint ptr %driver to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %driver, align 4
  store ptr null, ptr %priv.i, align 4
  tail call void @kfree(ptr noundef %1) #5
  %3 = load ptr, ptr @dbc_tty_driver, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.dbc_tty_exit.exit_crit_edge, label %if.then.i

entry.dbc_tty_exit.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %dbc_tty_exit.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @tty_unregister_driver(ptr noundef nonnull %3) #5
  %4 = load ptr, ptr @dbc_tty_driver, align 4
  tail call void @tty_driver_kref_put(ptr noundef %4) #5
  store ptr null, ptr @dbc_tty_driver, align 4
  br label %dbc_tty_exit.exit

dbc_tty_exit.exit:                                ; preds = %if.then.i, %entry.dbc_tty_exit.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xhci_dbc_tty_register_device(ptr noundef %dbc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.xhci_dbc, ptr %dbc, i32 0, i32 17
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %registered = getelementptr inbounds %struct.dbc_port, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %registered to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %registered, align 4, !range !52
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @tty_port_init(ptr noundef %1) #5
  %port_lock.i = getelementptr inbounds %struct.dbc_port, ptr %1, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %port_lock.i, ptr noundef nonnull @.str.5, ptr noundef nonnull @xhci_dbc_tty_init_port.__key, i16 noundef signext 3) #5
  %push.i = getelementptr inbounds %struct.dbc_port, ptr %1, i32 0, i32 5
  tail call void @tasklet_setup(ptr noundef %push.i, ptr noundef nonnull @dbc_rx_push) #5
  %read_pool.i = getelementptr inbounds %struct.dbc_port, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %read_pool.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %read_pool.i, ptr %read_pool.i, align 4
  %prev.i.i = getelementptr inbounds %struct.dbc_port, ptr %1, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %read_pool.i, ptr %prev.i.i, align 4
  %read_queue.i = getelementptr inbounds %struct.dbc_port, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %read_queue.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %read_queue.i, ptr %read_queue.i, align 4
  %prev.i1.i = getelementptr inbounds %struct.dbc_port, ptr %1, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %prev.i1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %read_queue.i, ptr %prev.i1.i, align 4
  %write_pool.i = getelementptr inbounds %struct.dbc_port, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %write_pool.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %write_pool.i, ptr %write_pool.i, align 4
  %prev.i2.i = getelementptr inbounds %struct.dbc_port, ptr %1, i32 0, i32 6, i32 1
  %9 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %write_pool.i, ptr %prev.i2.i, align 4
  %ops.i = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @dbc_port_ops, ptr %ops.i, align 4
  %n_read.i = getelementptr inbounds %struct.dbc_port, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %n_read.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %n_read.i, align 4
  %write_fifo = getelementptr inbounds %struct.dbc_port, ptr %1, i32 0, i32 7
  %call1 = tail call i32 @__kfifo_alloc(ptr noundef %write_fifo, i32 noundef 8192, i32 noundef 1, i32 noundef 3264) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool3.not = icmp eq i32 %call1, 0
  br i1 %tobool3.not, label %if.end.for.body.i_crit_edge, label %if.end.err_exit_port_crit_edge

if.end.err_exit_port_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_exit_port

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

for.body.i:                                       ; preds = %list_add_tail.exit.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %i.018.i = phi i32 [ %inc.i, %list_add_tail.exit.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %call.i = tail call ptr @dbc_alloc_request(ptr noundef %dbc, i32 noundef 1, i32 noundef 3264) #5
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %for.body.i.xhci_dbc_alloc_requests.exit_crit_edge, label %if.end.i

for.body.i.xhci_dbc_alloc_requests.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xhci_dbc_alloc_requests.exit

if.end.i:                                         ; preds = %for.body.i
  %length.i = getelementptr inbounds %struct.dbc_request, ptr %call.i, i32 0, i32 1
  %12 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1024, ptr %length.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3264, i32 noundef 1024) #9
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i, ptr %call.i, align 4
  %tobool4.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool4.not.i, label %if.then5.i, label %if.end6.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dbc_free_request(ptr noundef nonnull %call.i) #5
  br label %xhci_dbc_alloc_requests.exit

if.end6.i:                                        ; preds = %if.end.i
  %complete.i = getelementptr inbounds %struct.dbc_request, ptr %call.i, i32 0, i32 3
  %15 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @dbc_read_complete, ptr %complete.i, align 4
  %list_pool.i = getelementptr inbounds %struct.dbc_request, ptr %call.i, i32 0, i32 4
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list_pool.i, ptr noundef %17, ptr noundef %read_pool.i) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end6.i.list_add_tail.exit.i_crit_edge

if.end6.i.list_add_tail.exit.i_crit_edge:         ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %list_pool.i, ptr %prev.i.i, align 4
  %19 = ptrtoint ptr %list_pool.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %read_pool.i, ptr %list_pool.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.dbc_request, ptr %call.i, i32 0, i32 4, i32 1
  %20 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev3.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %list_pool.i, ptr %17, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end6.i.list_add_tail.exit.i_crit_edge
  %inc.i = add nuw nsw i32 %i.018.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %list_add_tail.exit.i.xhci_dbc_alloc_requests.exit_crit_edge, label %list_add_tail.exit.i.for.body.i_crit_edge

list_add_tail.exit.i.for.body.i_crit_edge:        ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

list_add_tail.exit.i.xhci_dbc_alloc_requests.exit_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xhci_dbc_alloc_requests.exit

xhci_dbc_alloc_requests.exit:                     ; preds = %list_add_tail.exit.i.xhci_dbc_alloc_requests.exit_crit_edge, %if.then5.i, %for.body.i.xhci_dbc_alloc_requests.exit_crit_edge
  %22 = ptrtoint ptr %read_pool.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %read_pool.i, align 4
  %cmp.i.not.i.not = icmp eq ptr %23, %read_pool.i
  br i1 %cmp.i.not.i.not, label %xhci_dbc_alloc_requests.exit.err_free_fifo_crit_edge, label %xhci_dbc_alloc_requests.exit.for.body.i52_crit_edge

xhci_dbc_alloc_requests.exit.for.body.i52_crit_edge: ; preds = %xhci_dbc_alloc_requests.exit
  br label %for.body.i52

xhci_dbc_alloc_requests.exit.err_free_fifo_crit_edge: ; preds = %xhci_dbc_alloc_requests.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free_fifo

for.body.i52:                                     ; preds = %list_add_tail.exit.i66.for.body.i52_crit_edge, %xhci_dbc_alloc_requests.exit.for.body.i52_crit_edge
  %i.018.i49 = phi i32 [ %inc.i64, %list_add_tail.exit.i66.for.body.i52_crit_edge ], [ 0, %xhci_dbc_alloc_requests.exit.for.body.i52_crit_edge ]
  %call.i50 = tail call ptr @dbc_alloc_request(ptr noundef %dbc, i32 noundef 0, i32 noundef 3264) #5
  %tobool.not.i51 = icmp eq ptr %call.i50, null
  br i1 %tobool.not.i51, label %for.body.i52.xhci_dbc_alloc_requests.exit69_crit_edge, label %if.end.i56

for.body.i52.xhci_dbc_alloc_requests.exit69_crit_edge: ; preds = %for.body.i52
  call void @__sanitizer_cov_trace_pc() #7
  br label %xhci_dbc_alloc_requests.exit69

if.end.i56:                                       ; preds = %for.body.i52
  %length.i53 = getelementptr inbounds %struct.dbc_request, ptr %call.i50, i32 0, i32 1
  %24 = ptrtoint ptr %length.i53 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1024, ptr %length.i53, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %25 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i54 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3264, i32 noundef 1024) #9
  %26 = ptrtoint ptr %call.i50 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call7.i.i54, ptr %call.i50, align 4
  %tobool4.not.i55 = icmp eq ptr %call7.i.i54, null
  br i1 %tobool4.not.i55, label %if.then5.i57, label %if.end6.i61

if.then5.i57:                                     ; preds = %if.end.i56
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dbc_free_request(ptr noundef nonnull %call.i50) #5
  br label %xhci_dbc_alloc_requests.exit69

if.end6.i61:                                      ; preds = %if.end.i56
  %complete.i58 = getelementptr inbounds %struct.dbc_request, ptr %call.i50, i32 0, i32 3
  %27 = ptrtoint ptr %complete.i58 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @dbc_write_complete, ptr %complete.i58, align 4
  %list_pool.i59 = getelementptr inbounds %struct.dbc_request, ptr %call.i50, i32 0, i32 4
  %28 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i60 = tail call zeroext i1 @__list_add_valid(ptr noundef %list_pool.i59, ptr noundef %29, ptr noundef %write_pool.i) #5
  br i1 %call.i.i.i60, label %if.end.i.i.i63, label %if.end6.i61.list_add_tail.exit.i66_crit_edge

if.end6.i61.list_add_tail.exit.i66_crit_edge:     ; preds = %if.end6.i61
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add_tail.exit.i66

if.end.i.i.i63:                                   ; preds = %if.end6.i61
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %list_pool.i59, ptr %prev.i2.i, align 4
  %31 = ptrtoint ptr %list_pool.i59 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %write_pool.i, ptr %list_pool.i59, align 4
  %prev3.i.i.i62 = getelementptr inbounds %struct.dbc_request, ptr %call.i50, i32 0, i32 4, i32 1
  %32 = ptrtoint ptr %prev3.i.i.i62 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev3.i.i.i62, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %list_pool.i59, ptr %29, align 4
  br label %list_add_tail.exit.i66

list_add_tail.exit.i66:                           ; preds = %if.end.i.i.i63, %if.end6.i61.list_add_tail.exit.i66_crit_edge
  %inc.i64 = add nuw nsw i32 %i.018.i49, 1
  %exitcond.not.i65 = icmp eq i32 %inc.i64, 16
  br i1 %exitcond.not.i65, label %list_add_tail.exit.i66.xhci_dbc_alloc_requests.exit69_crit_edge, label %list_add_tail.exit.i66.for.body.i52_crit_edge

list_add_tail.exit.i66.for.body.i52_crit_edge:    ; preds = %list_add_tail.exit.i66
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i52

list_add_tail.exit.i66.xhci_dbc_alloc_requests.exit69_crit_edge: ; preds = %list_add_tail.exit.i66
  call void @__sanitizer_cov_trace_pc() #7
  br label %xhci_dbc_alloc_requests.exit69

xhci_dbc_alloc_requests.exit69:                   ; preds = %list_add_tail.exit.i66.xhci_dbc_alloc_requests.exit69_crit_edge, %if.then5.i57, %for.body.i52.xhci_dbc_alloc_requests.exit69_crit_edge
  %34 = ptrtoint ptr %write_pool.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %write_pool.i, align 4
  %cmp.i.not.i67.not = icmp eq ptr %35, %write_pool.i
  br i1 %cmp.i.not.i67.not, label %xhci_dbc_alloc_requests.exit69.err_free_requests_crit_edge, label %if.end13

xhci_dbc_alloc_requests.exit69.err_free_requests_crit_edge: ; preds = %xhci_dbc_alloc_requests.exit69
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free_requests

if.end13:                                         ; preds = %xhci_dbc_alloc_requests.exit69
  %36 = load ptr, ptr @dbc_tty_driver, align 4
  %call15 = tail call ptr @tty_port_register_device(ptr noundef %1, ptr noundef %36, i32 noundef 0, ptr noundef null) #5
  %cmp.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %call15 to i32
  br label %err_free_requests

if.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %registered to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %registered, align 4
  br label %cleanup

err_free_requests:                                ; preds = %if.then17, %xhci_dbc_alloc_requests.exit69.err_free_requests_crit_edge
  %ret.0 = phi i32 [ -12, %xhci_dbc_alloc_requests.exit69.err_free_requests_crit_edge ], [ %37, %if.then17 ]
  %39 = ptrtoint ptr %read_pool.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %read_pool.i, align 4
  %cmp.i.not3.i = icmp eq ptr %40, %read_pool.i
  br i1 %cmp.i.not3.i, label %err_free_requests.xhci_dbc_free_requests.exit_crit_edge, label %err_free_requests.while.body.i_crit_edge

err_free_requests.while.body.i_crit_edge:         ; preds = %err_free_requests
  br label %while.body.i

err_free_requests.xhci_dbc_free_requests.exit_crit_edge: ; preds = %err_free_requests
  call void @__sanitizer_cov_trace_pc() #7
  br label %xhci_dbc_free_requests.exit

while.body.i:                                     ; preds = %list_del.exit.i.while.body.i_crit_edge, %err_free_requests.while.body.i_crit_edge
  %41 = phi ptr [ %53, %list_del.exit.i.while.body.i_crit_edge ], [ %40, %err_free_requests.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %41, i32 -16
  %call.i.i.i70 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %41) #5
  br i1 %call.i.i.i70, label %if.end.i.i.i71, label %while.body.i.list_del.exit.i_crit_edge

while.body.i.list_del.exit.i_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit.i

if.end.i.i.i71:                                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev.i.i.i, align 4
  %44 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %41, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %prev1.i.i.i.i, align 4
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %45, ptr %43, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i71, %while.body.i.list_del.exit.i_crit_edge
  %48 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr inttoptr (i32 256 to ptr), ptr %41, align 4
  %prev.i.i72 = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %49 = ptrtoint ptr %prev.i.i72 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i72, align 4
  %50 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %add.ptr.i, align 4
  tail call void @kfree(ptr noundef %51) #5
  tail call void @dbc_free_request(ptr noundef %add.ptr.i) #5
  %52 = ptrtoint ptr %read_pool.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile ptr, ptr %read_pool.i, align 4
  %cmp.i.not.i73 = icmp eq ptr %53, %read_pool.i
  br i1 %cmp.i.not.i73, label %list_del.exit.i.xhci_dbc_free_requests.exit_crit_edge, label %list_del.exit.i.while.body.i_crit_edge

list_del.exit.i.while.body.i_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

list_del.exit.i.xhci_dbc_free_requests.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xhci_dbc_free_requests.exit

xhci_dbc_free_requests.exit:                      ; preds = %list_del.exit.i.xhci_dbc_free_requests.exit_crit_edge, %err_free_requests.xhci_dbc_free_requests.exit_crit_edge
  %54 = ptrtoint ptr %write_pool.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile ptr, ptr %write_pool.i, align 4
  %cmp.i.not3.i74 = icmp eq ptr %55, %write_pool.i
  br i1 %cmp.i.not3.i74, label %xhci_dbc_free_requests.exit.err_free_fifo_crit_edge, label %xhci_dbc_free_requests.exit.while.body.i77_crit_edge

xhci_dbc_free_requests.exit.while.body.i77_crit_edge: ; preds = %xhci_dbc_free_requests.exit
  br label %while.body.i77

xhci_dbc_free_requests.exit.err_free_fifo_crit_edge: ; preds = %xhci_dbc_free_requests.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free_fifo

while.body.i77:                                   ; preds = %list_del.exit.i83.while.body.i77_crit_edge, %xhci_dbc_free_requests.exit.while.body.i77_crit_edge
  %56 = phi ptr [ %68, %list_del.exit.i83.while.body.i77_crit_edge ], [ %55, %xhci_dbc_free_requests.exit.while.body.i77_crit_edge ]
  %add.ptr.i75 = getelementptr i8, ptr %56, i32 -16
  %call.i.i.i76 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %56) #5
  br i1 %call.i.i.i76, label %if.end.i.i.i80, label %while.body.i77.list_del.exit.i83_crit_edge

while.body.i77.list_del.exit.i83_crit_edge:       ; preds = %while.body.i77
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit.i83

if.end.i.i.i80:                                   ; preds = %while.body.i77
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i78 = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %prev.i.i.i78 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %prev.i.i.i78, align 4
  %59 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %56, align 4
  %prev1.i.i.i.i79 = getelementptr inbounds %struct.list_head, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %prev1.i.i.i.i79 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %58, ptr %prev1.i.i.i.i79, align 4
  %62 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %60, ptr %58, align 4
  br label %list_del.exit.i83

list_del.exit.i83:                                ; preds = %if.end.i.i.i80, %while.body.i77.list_del.exit.i83_crit_edge
  %63 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr inttoptr (i32 256 to ptr), ptr %56, align 4
  %prev.i.i81 = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  %64 = ptrtoint ptr %prev.i.i81 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i81, align 4
  %65 = ptrtoint ptr %add.ptr.i75 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %add.ptr.i75, align 4
  tail call void @kfree(ptr noundef %66) #5
  tail call void @dbc_free_request(ptr noundef %add.ptr.i75) #5
  %67 = ptrtoint ptr %write_pool.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile ptr, ptr %write_pool.i, align 4
  %cmp.i.not.i82 = icmp eq ptr %68, %write_pool.i
  br i1 %cmp.i.not.i82, label %list_del.exit.i83.err_free_fifo_crit_edge, label %list_del.exit.i83.while.body.i77_crit_edge

list_del.exit.i83.while.body.i77_crit_edge:       ; preds = %list_del.exit.i83
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i77

list_del.exit.i83.err_free_fifo_crit_edge:        ; preds = %list_del.exit.i83
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free_fifo

err_free_fifo:                                    ; preds = %list_del.exit.i83.err_free_fifo_crit_edge, %xhci_dbc_free_requests.exit.err_free_fifo_crit_edge, %xhci_dbc_alloc_requests.exit.err_free_fifo_crit_edge
  %ret.1 = phi i32 [ -12, %xhci_dbc_alloc_requests.exit.err_free_fifo_crit_edge ], [ %ret.0, %xhci_dbc_free_requests.exit.err_free_fifo_crit_edge ], [ %ret.0, %list_del.exit.i83.err_free_fifo_crit_edge ]
  tail call void @__kfifo_free(ptr noundef %write_fifo) #5
  br label %err_exit_port

err_exit_port:                                    ; preds = %err_free_fifo, %if.end.err_exit_port_crit_edge
  %ret.2 = phi i32 [ %call1, %if.end.err_exit_port_crit_edge ], [ %ret.1, %err_free_fifo ]
  tail call void @tasklet_kill(ptr noundef %push.i) #5
  tail call void @tty_port_destroy(ptr noundef %1) #5
  %dev = getelementptr inbounds %struct.xhci_dbc, ptr %dbc, i32 0, i32 1
  %69 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %70, ptr noundef nonnull @.str, i32 noundef %ret.2) #8
  br label %cleanup

cleanup:                                          ; preds = %err_exit_port, %if.end19, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %err_exit_port ], [ 0, %if.end19 ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xhci_dbc_tty_unregister_device(ptr nocapture noundef readonly %dbc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.xhci_dbc, ptr %dbc, i32 0, i32 17
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %registered = getelementptr inbounds %struct.dbc_port, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %registered to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %registered, align 4, !range !52
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr @dbc_tty_driver, align 4
  tail call void @tty_unregister_device(ptr noundef %4, i32 noundef 0) #5
  %push.i = getelementptr inbounds %struct.dbc_port, ptr %1, i32 0, i32 5
  tail call void @tasklet_kill(ptr noundef %push.i) #5
  tail call void @tty_port_destroy(ptr noundef %1) #5
  %5 = ptrtoint ptr %registered to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %registered, align 4
  %write_fifo = getelementptr inbounds %struct.dbc_port, ptr %1, i32 0, i32 7
  tail call void @__kfifo_free(ptr noundef %write_fifo) #5
  %read_pool = getelementptr inbounds %struct.dbc_port, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %read_pool to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %read_pool, align 4
  %cmp.i.not3.i = icmp eq ptr %7, %read_pool
  br i1 %cmp.i.not3.i, label %if.end.xhci_dbc_free_requests.exit_crit_edge, label %if.end.while.body.i_crit_edge

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

if.end.xhci_dbc_free_requests.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %xhci_dbc_free_requests.exit

while.body.i:                                     ; preds = %list_del.exit.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  %8 = phi ptr [ %20, %list_del.exit.i.while.body.i_crit_edge ], [ %7, %if.end.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %8, i32 -16
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %8) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.list_del.exit.i_crit_edge

while.body.i.list_del.exit.i_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i.i, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %8, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %while.body.i.list_del.exit.i_crit_edge
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %8, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr.i, align 4
  tail call void @kfree(ptr noundef %18) #5
  tail call void @dbc_free_request(ptr noundef %add.ptr.i) #5
  %19 = ptrtoint ptr %read_pool to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %read_pool, align 4
  %cmp.i.not.i = icmp eq ptr %20, %read_pool
  br i1 %cmp.i.not.i, label %list_del.exit.i.xhci_dbc_free_requests.exit_crit_edge, label %list_del.exit.i.while.body.i_crit_edge

list_del.exit.i.while.body.i_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

list_del.exit.i.xhci_dbc_free_requests.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %xhci_dbc_free_requests.exit

xhci_dbc_free_requests.exit:                      ; preds = %list_del.exit.i.xhci_dbc_free_requests.exit_crit_edge, %if.end.xhci_dbc_free_requests.exit_crit_edge
  %read_queue = getelementptr inbounds %struct.dbc_port, ptr %1, i32 0, i32 3
  %21 = ptrtoint ptr %read_queue to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %read_queue, align 4
  %cmp.i.not3.i8 = icmp eq ptr %22, %read_queue
  br i1 %cmp.i.not3.i8, label %xhci_dbc_free_requests.exit.xhci_dbc_free_requests.exit18_crit_edge, label %xhci_dbc_free_requests.exit.while.body.i11_crit_edge

xhci_dbc_free_requests.exit.while.body.i11_crit_edge: ; preds = %xhci_dbc_free_requests.exit
  br label %while.body.i11

xhci_dbc_free_requests.exit.xhci_dbc_free_requests.exit18_crit_edge: ; preds = %xhci_dbc_free_requests.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %xhci_dbc_free_requests.exit18

while.body.i11:                                   ; preds = %list_del.exit.i17.while.body.i11_crit_edge, %xhci_dbc_free_requests.exit.while.body.i11_crit_edge
  %23 = phi ptr [ %35, %list_del.exit.i17.while.body.i11_crit_edge ], [ %22, %xhci_dbc_free_requests.exit.while.body.i11_crit_edge ]
  %add.ptr.i9 = getelementptr i8, ptr %23, i32 -16
  %call.i.i.i10 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %23) #5
  br i1 %call.i.i.i10, label %if.end.i.i.i14, label %while.body.i11.list_del.exit.i17_crit_edge

while.body.i11.list_del.exit.i17_crit_edge:       ; preds = %while.body.i11
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit.i17

if.end.i.i.i14:                                   ; preds = %while.body.i11
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i12 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i.i12 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i.i12, align 4
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %23, align 4
  %prev1.i.i.i.i13 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i.i13 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev1.i.i.i.i13, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %25, align 4
  br label %list_del.exit.i17

list_del.exit.i17:                                ; preds = %if.end.i.i.i14, %while.body.i11.list_del.exit.i17_crit_edge
  %30 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 256 to ptr), ptr %23, align 4
  %prev.i.i15 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i.i15 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i15, align 4
  %32 = ptrtoint ptr %add.ptr.i9 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr.i9, align 4
  tail call void @kfree(ptr noundef %33) #5
  tail call void @dbc_free_request(ptr noundef %add.ptr.i9) #5
  %34 = ptrtoint ptr %read_queue to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %read_queue, align 4
  %cmp.i.not.i16 = icmp eq ptr %35, %read_queue
  br i1 %cmp.i.not.i16, label %list_del.exit.i17.xhci_dbc_free_requests.exit18_crit_edge, label %list_del.exit.i17.while.body.i11_crit_edge

list_del.exit.i17.while.body.i11_crit_edge:       ; preds = %list_del.exit.i17
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i11

list_del.exit.i17.xhci_dbc_free_requests.exit18_crit_edge: ; preds = %list_del.exit.i17
  call void @__sanitizer_cov_trace_pc() #7
  br label %xhci_dbc_free_requests.exit18

xhci_dbc_free_requests.exit18:                    ; preds = %list_del.exit.i17.xhci_dbc_free_requests.exit18_crit_edge, %xhci_dbc_free_requests.exit.xhci_dbc_free_requests.exit18_crit_edge
  %write_pool = getelementptr inbounds %struct.dbc_port, ptr %1, i32 0, i32 6
  %36 = ptrtoint ptr %write_pool to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %write_pool, align 4
  %cmp.i.not3.i19 = icmp eq ptr %37, %write_pool
  br i1 %cmp.i.not3.i19, label %xhci_dbc_free_requests.exit18.cleanup_crit_edge, label %xhci_dbc_free_requests.exit18.while.body.i22_crit_edge

xhci_dbc_free_requests.exit18.while.body.i22_crit_edge: ; preds = %xhci_dbc_free_requests.exit18
  br label %while.body.i22

xhci_dbc_free_requests.exit18.cleanup_crit_edge:  ; preds = %xhci_dbc_free_requests.exit18
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body.i22:                                   ; preds = %list_del.exit.i28.while.body.i22_crit_edge, %xhci_dbc_free_requests.exit18.while.body.i22_crit_edge
  %38 = phi ptr [ %50, %list_del.exit.i28.while.body.i22_crit_edge ], [ %37, %xhci_dbc_free_requests.exit18.while.body.i22_crit_edge ]
  %add.ptr.i20 = getelementptr i8, ptr %38, i32 -16
  %call.i.i.i21 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %38) #5
  br i1 %call.i.i.i21, label %if.end.i.i.i25, label %while.body.i22.list_del.exit.i28_crit_edge

while.body.i22.list_del.exit.i28_crit_edge:       ; preds = %while.body.i22
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit.i28

if.end.i.i.i25:                                   ; preds = %while.body.i22
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i23 = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %prev.i.i.i23 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %prev.i.i.i23, align 4
  %41 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %38, align 4
  %prev1.i.i.i.i24 = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %prev1.i.i.i.i24 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %40, ptr %prev1.i.i.i.i24, align 4
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %42, ptr %40, align 4
  br label %list_del.exit.i28

list_del.exit.i28:                                ; preds = %if.end.i.i.i25, %while.body.i22.list_del.exit.i28_crit_edge
  %45 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr inttoptr (i32 256 to ptr), ptr %38, align 4
  %prev.i.i26 = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  %46 = ptrtoint ptr %prev.i.i26 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i26, align 4
  %47 = ptrtoint ptr %add.ptr.i20 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %add.ptr.i20, align 4
  tail call void @kfree(ptr noundef %48) #5
  tail call void @dbc_free_request(ptr noundef %add.ptr.i20) #5
  %49 = ptrtoint ptr %write_pool to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile ptr, ptr %write_pool, align 4
  %cmp.i.not.i27 = icmp eq ptr %50, %write_pool
  br i1 %cmp.i.not.i27, label %list_del.exit.i28.cleanup_crit_edge, label %list_del.exit.i28.while.body.i22_crit_edge

list_del.exit.i28.while.body.i22_crit_edge:       ; preds = %list_del.exit.i28
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i22

list_del.exit.i28.cleanup_crit_edge:              ; preds = %list_del.exit.i28
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit.i28.cleanup_crit_edge, %xhci_dbc_free_requests.exit18.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_alloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dbc_read_complete(ptr nocapture noundef readonly %dbc, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.xhci_dbc, ptr %dbc, i32 0, i32 17
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %port_lock = getelementptr inbounds %struct.dbc_port, ptr %1, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port_lock) #5
  %list_pool = getelementptr inbounds %struct.dbc_request, ptr %req, i32 0, i32 4
  %read_queue = getelementptr inbounds %struct.dbc_port, ptr %1, i32 0, i32 3
  %prev.i = getelementptr inbounds %struct.dbc_port, ptr %1, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list_pool, ptr noundef %3, ptr noundef %read_queue) #5
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %list_pool, ptr %prev.i, align 4
  %5 = ptrtoint ptr %list_pool to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %read_queue, ptr %list_pool, align 4
  %prev3.i.i = getelementptr inbounds %struct.dbc_request, ptr %req, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev3.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %list_pool, ptr %3, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  %state.i = getelementptr inbounds %struct.dbc_port, ptr %1, i32 0, i32 5, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %list_add_tail.exit.tasklet_schedule.exit_crit_edge

list_add_tail.exit.tasklet_schedule.exit_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %tasklet_schedule.exit

if.then.i:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  %push = getelementptr inbounds %struct.dbc_port, ptr %1, i32 0, i32 5
  tail call void @__tasklet_schedule(ptr noundef %push) #5
  br label %tasklet_schedule.exit

tasklet_schedule.exit:                            ; preds = %if.then.i, %list_add_tail.exit.tasklet_schedule.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port_lock, i32 noundef %call3) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dbc_write_complete(ptr nocapture noundef readonly %dbc, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.xhci_dbc, ptr %dbc, i32 0, i32 17
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %port_lock = getelementptr inbounds %struct.dbc_port, ptr %1, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port_lock) #5
  %list_pool = getelementptr inbounds %struct.dbc_request, ptr %req, i32 0, i32 4
  %write_pool = getelementptr inbounds %struct.dbc_port, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %write_pool to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_pool, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list_pool, ptr noundef %write_pool, ptr noundef %3) #5
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add.exit_crit_edge

entry.list_add.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %list_pool, ptr %prev1.i.i, align 4
  %5 = ptrtoint ptr %list_pool to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %3, ptr %list_pool, align 4
  %prev3.i.i = getelementptr inbounds %struct.dbc_request, ptr %req, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %write_pool, ptr %prev3.i.i, align 4
  %7 = ptrtoint ptr %write_pool to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %list_pool, ptr %write_pool, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %entry.list_add.exit_crit_edge
  %status = getelementptr inbounds %struct.dbc_request, ptr %req, i32 0, i32 5
  %8 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %status, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %do.end9 [
    i32 0, label %sw.bb
    i32 -108, label %list_add.exit.sw.epilog_crit_edge
  ]

list_add.exit.sw.epilog_crit_edge:                ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @dbc_start_tx(ptr noundef %1)
  br label %sw.epilog

do.end9:                                          ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.xhci_dbc, ptr %dbc, i32 0, i32 1
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %12, ptr noundef nonnull @.str.11, i32 noundef %9) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end9, %sw.bb, %list_add.exit.sw.epilog_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port_lock, i32 noundef %call3) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_port_register_device(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__kfifo_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dbc_rx_push(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -640
  %read_queue = getelementptr i8, ptr %t, i32 -12
  %port_lock = getelementptr i8, ptr %t, i32 -64
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port_lock) #5
  %tty7 = getelementptr i8, ptr %t, i32 -456
  %0 = ptrtoint ptr %tty7 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tty7, align 4
  %2 = ptrtoint ptr %read_queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %read_queue, align 4
  %cmp.i.not125 = icmp eq ptr %3, %read_queue
  br i1 %cmp.i.not125, label %entry.if.end46_crit_edge, label %while.body.lr.ph

entry.if.end46_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end46

while.body.lr.ph:                                 ; preds = %entry
  %tobool12.not = icmp eq ptr %1, null
  %flags.i = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 16
  %n_read = getelementptr i8, ptr %t, i32 -4
  %read_pool = getelementptr i8, ptr %t, i32 -20
  br label %while.body

while.body:                                       ; preds = %list_move.exit.while.body_crit_edge, %while.body.lr.ph
  %4 = phi ptr [ %3, %while.body.lr.ph ], [ %32, %list_move.exit.while.body_crit_edge ]
  %do_push.0.off0128 = phi i1 [ false, %while.body.lr.ph ], [ %do_push.2.off0, %list_move.exit.while.body_crit_edge ]
  %disconnect.0.off0126 = phi i1 [ false, %while.body.lr.ph ], [ %disconnect.1.off0, %list_move.exit.while.body_crit_edge ]
  %add.ptr11 = getelementptr i8, ptr %4, i32 -16
  br i1 %tobool12.not, label %while.body.if.end_crit_edge, label %land.lhs.true

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %while.body
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.while.end_crit_edge

land.lhs.true.while.end_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %while.body.if.end_crit_edge
  %status = getelementptr i8, ptr %4, i32 8
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %status, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %8, label %do.end17 [
    i32 0, label %if.end.sw.epilog_crit_edge
    i32 -108, label %sw.bb
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %8) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end17, %sw.bb, %if.end.sw.epilog_crit_edge
  %disconnect.1.off0 = phi i1 [ %disconnect.0.off0126, %do.end17 ], [ true, %sw.bb ], [ %disconnect.0.off0126, %if.end.sw.epilog_crit_edge ]
  %actual = getelementptr i8, ptr %4, i32 12
  %10 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %actual, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool21.not = icmp eq i32 %11, 0
  br i1 %tobool21.not, label %sw.epilog.if.end42_crit_edge, label %if.then22

sw.epilog.if.end42_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

if.then22:                                        ; preds = %sw.epilog
  %12 = ptrtoint ptr %add.ptr11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr11, align 4
  %14 = ptrtoint ptr %n_read to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %n_read, align 4
  %add.ptr26 = getelementptr i8, ptr %13, i32 %15
  %sub = sub i32 %11, %15
  %call.i = tail call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %add.ptr, ptr noundef %add.ptr26, i8 noundef zeroext 0, i32 noundef %sub) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool30.not = icmp ne i32 %call.i, 0
  %do_push.1.off0 = select i1 %tobool30.not, i1 true, i1 %do_push.0.off0128
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %sub)
  %cmp33.not = icmp eq i32 %call.i, %sub
  br i1 %cmp33.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %n_read to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %n_read, align 4
  br label %if.end42

cleanup:                                          ; preds = %if.then22
  %17 = ptrtoint ptr %n_read to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %n_read, align 4
  %add = add i32 %18, %call.i
  store i32 %add, ptr %n_read, align 4
  br i1 %do_push.1.off0, label %cleanup.if.then44_crit_edge, label %cleanup.if.end46_crit_edge

cleanup.if.end46_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end46

cleanup.if.then44_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then44

if.end42:                                         ; preds = %cleanup.thread, %sw.epilog.if.end42_crit_edge
  %do_push.2.off0 = phi i1 [ %do_push.0.off0128, %sw.epilog.if.end42_crit_edge ], [ %do_push.1.off0, %cleanup.thread ]
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %4) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.end42.__list_del_entry.exit.i_crit_edge

if.end42.__list_del_entry.exit.i_crit_edge:       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i, align 4
  %21 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %4, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.end42.__list_del_entry.exit.i_crit_edge
  %25 = ptrtoint ptr %read_pool to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %read_pool, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %4, ptr noundef %read_pool, ptr noundef %26) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move.exit_crit_edge

__list_del_entry.exit.i.list_move.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_move.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %4, ptr %prev1.i.i2.i, align 4
  %28 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %26, ptr %4, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %29 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %read_pool, ptr %prev3.i.i.i, align 4
  %30 = ptrtoint ptr %read_pool to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %4, ptr %read_pool, align 4
  br label %list_move.exit

list_move.exit:                                   ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move.exit_crit_edge
  %31 = ptrtoint ptr %read_queue to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %read_queue, align 4
  %cmp.i.not = icmp eq ptr %32, %read_queue
  br i1 %cmp.i.not, label %list_move.exit.while.end_crit_edge, label %list_move.exit.while.body_crit_edge

list_move.exit.while.body_crit_edge:              ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

list_move.exit.while.end_crit_edge:               ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %list_move.exit.while.end_crit_edge, %land.lhs.true.while.end_crit_edge
  %disconnect.0.off0.lcssa = phi i1 [ %disconnect.1.off0, %list_move.exit.while.end_crit_edge ], [ %disconnect.0.off0126, %land.lhs.true.while.end_crit_edge ]
  %do_push.0.off0.lcssa = phi i1 [ %do_push.2.off0, %list_move.exit.while.end_crit_edge ], [ %do_push.0.off0128, %land.lhs.true.while.end_crit_edge ]
  br i1 %do_push.0.off0.lcssa, label %while.end.if.then44_crit_edge, label %while.end.if.end46_crit_edge

while.end.if.end46_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end46

while.end.if.then44_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then44

if.then44:                                        ; preds = %while.end.if.then44_crit_edge, %cleanup.if.then44_crit_edge
  %disconnect.2.off0120 = phi i1 [ %disconnect.1.off0, %cleanup.if.then44_crit_edge ], [ %disconnect.0.off0.lcssa, %while.end.if.then44_crit_edge ]
  tail call void @tty_flip_buffer_push(ptr noundef %add.ptr) #5
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %while.end.if.end46_crit_edge, %cleanup.if.end46_crit_edge, %entry.if.end46_crit_edge
  %do_push.3.off0121 = phi i1 [ false, %cleanup.if.end46_crit_edge ], [ true, %if.then44 ], [ false, %while.end.if.end46_crit_edge ], [ false, %entry.if.end46_crit_edge ]
  %disconnect.2.off0119 = phi i1 [ %disconnect.1.off0, %cleanup.if.end46_crit_edge ], [ %disconnect.2.off0120, %if.then44 ], [ %disconnect.0.off0.lcssa, %while.end.if.end46_crit_edge ], [ false, %entry.if.end46_crit_edge ]
  %33 = ptrtoint ptr %read_queue to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %read_queue, align 4
  %cmp.i110 = icmp eq ptr %34, %read_queue
  %tobool50.not = icmp eq ptr %1, null
  %or.cond = select i1 %cmp.i110, i1 true, i1 %tobool50.not
  br i1 %or.cond, label %if.end46.if.end63_crit_edge, label %if.then51

if.end46.if.end63_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end63

if.then51:                                        ; preds = %if.end46
  %flags.i112 = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 16
  %35 = ptrtoint ptr %flags.i112 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %flags.i112, align 4
  %and1.i.i113 = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i113)
  %tobool.i114.not = icmp eq i32 %and1.i.i113, 0
  br i1 %tobool.i114.not, label %if.then53, label %if.then51.if.end63_crit_edge

if.then51.if.end63_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end63

if.then53:                                        ; preds = %if.then51
  br i1 %do_push.3.off0121, label %if.then55, label %do.end58

if.then55:                                        ; preds = %if.then53
  %state.i = getelementptr inbounds %struct.tasklet_struct, ptr %t, i32 0, i32 1
  %call.i115 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i115)
  %tobool.not.i = icmp eq i32 %call.i115, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then55.if.end63_crit_edge

if.then55.if.end63_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end63

if.then.i:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__tasklet_schedule(ptr noundef %t) #5
  br label %if.end63

do.end58:                                         ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #7
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #8
  br label %if.end63

if.end63:                                         ; preds = %do.end58, %if.then.i, %if.then55.if.end63_crit_edge, %if.then51.if.end63_crit_edge, %if.end46.if.end63_crit_edge
  br i1 %disconnect.2.off0119, label %if.end63.if.end66_crit_edge, label %if.then65

if.end63.if.end66_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66

if.then65:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @dbc_start_rx(ptr noundef %add.ptr)
  br label %if.end66

if.end66:                                         ; preds = %if.then65, %if.end63.if.end66_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port_lock, i32 noundef %call3) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dbc_start_rx(ptr noundef %port) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %read_pool = getelementptr inbounds %struct.dbc_port, ptr %port, i32 0, i32 2
  %tty = getelementptr inbounds %struct.tty_port, ptr %port, i32 0, i32 1
  %port_lock = getelementptr inbounds %struct.dbc_port, ptr %port, i32 0, i32 1
  br label %while.cond

while.cond:                                       ; preds = %list_del.exit.while.cond_crit_edge, %entry
  %0 = ptrtoint ptr %read_pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %read_pool, align 4
  %cmp.i.not = icmp eq ptr %1, %read_pool
  br i1 %cmp.i.not, label %while.cond.while.end_crit_edge, label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body:                                       ; preds = %while.cond
  %2 = ptrtoint ptr %tty to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tty, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %while.body.while.end_crit_edge, label %if.end

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end:                                           ; preds = %while.body
  %add.ptr = getelementptr i8, ptr %1, i32 -16
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %length = getelementptr i8, ptr %1, i32 -12
  %12 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1024, ptr %length, align 4
  tail call void @_raw_spin_unlock(ptr noundef %port_lock) #5
  %call3 = tail call i32 @dbc_ep_queue(ptr noundef %add.ptr) #5
  tail call void @_raw_spin_lock(ptr noundef %port_lock) #5
  %tobool5.not = icmp eq i32 %call3, 0
  br i1 %tobool5.not, label %list_del.exit.while.cond_crit_edge, label %if.then6

list_del.exit.while.cond_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond

if.then6:                                         ; preds = %list_del.exit
  %13 = ptrtoint ptr %read_pool to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read_pool, align 4
  %call.i.i17 = tail call zeroext i1 @__list_add_valid(ptr noundef %1, ptr noundef %read_pool, ptr noundef %14) #5
  br i1 %call.i.i17, label %if.end.i.i18, label %if.then6.while.end_crit_edge

if.then6.while.end_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end.i.i18:                                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.le = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %1, ptr %prev1.i.i, align 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %14, ptr %1, align 4
  %17 = ptrtoint ptr %prev.i.le to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %read_pool, ptr %prev.i.le, align 4
  %18 = ptrtoint ptr %read_pool to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %1, ptr %read_pool, align 4
  br label %while.end

while.end:                                        ; preds = %if.end.i.i18, %if.then6.while.end_crit_edge, %while.body.while.end_crit_edge, %while.cond.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_insert_flip_string_fixed_flag(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dbc_ep_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dbc_port_activate(ptr noundef %_port, ptr nocapture noundef readnone %tty) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %port_lock = getelementptr inbounds %struct.dbc_port, ptr %_port, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port_lock) #5
  tail call fastcc void @dbc_start_rx(ptr noundef %_port)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port_lock, i32 noundef %call3) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dbc_alloc_request(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dbc_free_request(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dbc_start_tx(ptr noundef %port) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %write_pool = getelementptr inbounds %struct.dbc_port, ptr %port, i32 0, i32 6
  %0 = ptrtoint ptr %write_pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %write_pool, align 4
  %cmp.i.not8 = icmp eq ptr %1, %write_pool
  br i1 %cmp.i.not8, label %entry.if.end14_crit_edge, label %while.body.lr.ph

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

while.body.lr.ph:                                 ; preds = %entry
  %write_fifo.i = getelementptr inbounds %struct.dbc_port, ptr %port, i32 0, i32 7
  %out.i = getelementptr inbounds %struct.dbc_port, ptr %port, i32 0, i32 7, i32 0, i32 0, i32 1
  %port_lock = getelementptr inbounds %struct.dbc_port, ptr %port, i32 0, i32 1
  %2 = ptrtoint ptr %write_fifo.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %write_fifo.i, align 4
  %4 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %out.i, align 4
  %sub.i26 = sub i32 %3, %5
  %6 = tail call i32 @llvm.umin.i32(i32 %sub.i26, i32 1024) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp1.not.i27 = icmp eq i32 %6, 0
  br i1 %cmp1.not.i27, label %while.body.lr.ph.if.end14_crit_edge, label %while.body.lr.ph.dbc_send_packet.exit_crit_edge

while.body.lr.ph.dbc_send_packet.exit_crit_edge:  ; preds = %while.body.lr.ph
  br label %dbc_send_packet.exit

while.body.lr.ph.if.end14_crit_edge:              ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

while.cond:                                       ; preds = %list_del.exit
  %7 = ptrtoint ptr %write_pool to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %write_pool, align 4
  %cmp.i.not = icmp eq ptr %8, %write_pool
  br i1 %cmp.i.not, label %while.cond.land.lhs.true_crit_edge, label %while.body

while.cond.land.lhs.true_crit_edge:               ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

while.body:                                       ; preds = %while.cond
  %9 = ptrtoint ptr %write_fifo.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %write_fifo.i, align 4
  %11 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %out.i, align 4
  %sub.i = sub i32 %10, %12
  %13 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 1024) #5
  %cmp1.not.i = icmp eq i32 %13, 0
  br i1 %cmp1.not.i, label %while.body.land.lhs.true_crit_edge, label %while.body.dbc_send_packet.exit_crit_edge

while.body.dbc_send_packet.exit_crit_edge:        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %dbc_send_packet.exit

while.body.land.lhs.true_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

dbc_send_packet.exit:                             ; preds = %while.body.dbc_send_packet.exit_crit_edge, %while.body.lr.ph.dbc_send_packet.exit_crit_edge
  %14 = phi i32 [ %13, %while.body.dbc_send_packet.exit_crit_edge ], [ %6, %while.body.lr.ph.dbc_send_packet.exit_crit_edge ]
  %do_tty_wake.0.off0928 = phi i1 [ true, %while.body.dbc_send_packet.exit_crit_edge ], [ false, %while.body.lr.ph.dbc_send_packet.exit_crit_edge ]
  %15 = phi ptr [ %8, %while.body.dbc_send_packet.exit_crit_edge ], [ %1, %while.body.lr.ph.dbc_send_packet.exit_crit_edge ]
  %add.ptr29 = getelementptr i8, ptr %15, i32 -16
  %16 = ptrtoint ptr %add.ptr29 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr29, align 4
  %call.i = tail call i32 @__kfifo_out(ptr noundef %write_fifo.i, ptr noundef %17, i32 noundef %14) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp eq i32 %call.i, 0
  br i1 %cmp, label %while.end, label %if.end

if.end:                                           ; preds = %dbc_send_packet.exit
  %length = getelementptr i8, ptr %15, i32 -12
  %18 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call.i, ptr %length, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %15) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i, align 4
  %21 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %15, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %25 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 256 to ptr), ptr %15, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %port_lock) #5
  %call2 = tail call i32 @dbc_ep_queue(ptr noundef %add.ptr29) #5
  tail call void @_raw_spin_lock(ptr noundef %port_lock) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool4.not = icmp eq i32 %call2, 0
  br i1 %tobool4.not, label %while.cond, label %if.then5

if.then5:                                         ; preds = %list_del.exit
  %27 = ptrtoint ptr %write_pool to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %write_pool, align 4
  %call.i.i2 = tail call zeroext i1 @__list_add_valid(ptr noundef %15, ptr noundef %write_pool, ptr noundef %28) #5
  br i1 %call.i.i2, label %if.end.i.i3, label %if.then5.land.lhs.true_crit_edge

if.then5.land.lhs.true_crit_edge:                 ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

if.end.i.i3:                                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.le = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %15, ptr %prev1.i.i, align 4
  %30 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %28, ptr %15, align 4
  %31 = ptrtoint ptr %prev.i.le to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %write_pool, ptr %prev.i.le, align 4
  %32 = ptrtoint ptr %write_pool to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %15, ptr %write_pool, align 4
  br label %land.lhs.true

while.end:                                        ; preds = %dbc_send_packet.exit
  br i1 %do_tty_wake.0.off0928, label %while.end.land.lhs.true_crit_edge, label %while.end.if.end14_crit_edge

while.end.if.end14_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

while.end.land.lhs.true_crit_edge:                ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %while.end.land.lhs.true_crit_edge, %if.end.i.i3, %if.then5.land.lhs.true_crit_edge, %while.body.land.lhs.true_crit_edge, %while.cond.land.lhs.true_crit_edge
  %tty = getelementptr inbounds %struct.tty_port, ptr %port, i32 0, i32 1
  %33 = ptrtoint ptr %tty to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tty, align 4
  %tobool10.not = icmp eq ptr %34, null
  br i1 %tobool10.not, label %land.lhs.true.if.end14_crit_edge, label %if.then11

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @tty_wakeup(ptr noundef nonnull %34) #5
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %land.lhs.true.if.end14_crit_edge, %while.end.if.end14_crit_edge, %while.body.lr.ph.if.end14_crit_edge, %entry.if.end14_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_wakeup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_out(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unregister_device(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__tty_alloc_driver(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_driver_kref_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dbc_tty_install(ptr noundef %driver, ptr noundef %tty) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_state = getelementptr inbounds %struct.tty_driver, ptr %driver, i32 0, i32 19
  %0 = ptrtoint ptr %driver_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_state, align 4
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %2 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %driver_data, align 4
  %call = tail call i32 @tty_port_install(ptr noundef %1, ptr noundef %driver, ptr noundef %tty) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dbc_tty_open(ptr noundef %tty, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %call = tail call i32 @tty_port_open(ptr noundef %1, ptr noundef %tty, ptr noundef %file) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dbc_tty_close(ptr noundef %tty, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  tail call void @tty_port_close(ptr noundef %1, ptr noundef %tty, ptr noundef %file) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dbc_tty_write(ptr nocapture noundef readonly %tty, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %port_lock = getelementptr inbounds %struct.dbc_port, ptr %1, i32 0, i32 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port_lock) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not = icmp eq i32 %count, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %write_fifo = getelementptr inbounds %struct.dbc_port, ptr %1, i32 0, i32 7
  %call6 = tail call i32 @__kfifo_in(ptr noundef %write_fifo, ptr noundef %buf, i32 noundef %count) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %count.addr.0 = phi i32 [ %call6, %if.then ], [ 0, %entry.if.end_crit_edge ]
  tail call fastcc void @dbc_start_tx(ptr noundef %1)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port_lock, i32 noundef %call2) #5
  ret i32 %count.addr.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dbc_tty_put_char(ptr nocapture noundef readonly %tty, i8 noundef zeroext %ch) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %port_lock = getelementptr inbounds %struct.dbc_port, ptr %1, i32 0, i32 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port_lock) #5
  %write_fifo = getelementptr inbounds %struct.dbc_port, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %write_fifo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %write_fifo, align 4
  %out = getelementptr inbounds %struct.dbc_port, ptr %1, i32 0, i32 7, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %out, align 4
  %sub = sub i32 %3, %5
  %mask = getelementptr inbounds %struct.dbc_port, ptr %1, i32 0, i32 7, i32 0, i32 0, i32 2
  %6 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mask, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %7)
  %cmp8 = icmp ule i32 %sub, %7
  br i1 %cmp8, label %if.then12, label %entry.if.end22_crit_edge

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.then12:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %data = getelementptr inbounds %struct.dbc_port, ptr %1, i32 0, i32 7, i32 0, i32 0, i32 4
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %and = and i32 %7, %3
  %arrayidx = getelementptr i8, ptr %9, i32 %and
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %ch, ptr %arrayidx, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !53
  %11 = ptrtoint ptr %write_fifo to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %write_fifo, align 4
  %inc = add i32 %12, 1
  store i32 %inc, ptr %write_fifo, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then12, %entry.if.end22_crit_edge
  %lnot.ext = zext i1 %cmp8 to i32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port_lock, i32 noundef %call2) #5
  ret i32 %lnot.ext
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dbc_tty_flush_chars(ptr nocapture noundef readonly %tty) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %port_lock = getelementptr inbounds %struct.dbc_port, ptr %1, i32 0, i32 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port_lock) #5
  tail call fastcc void @dbc_start_tx(ptr noundef %1)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port_lock, i32 noundef %call2) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dbc_tty_write_room(ptr nocapture noundef readonly %tty) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %port_lock = getelementptr inbounds %struct.dbc_port, ptr %1, i32 0, i32 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port_lock) #5
  %write_fifo = getelementptr inbounds %struct.dbc_port, ptr %1, i32 0, i32 7
  %mask = getelementptr inbounds %struct.dbc_port, ptr %1, i32 0, i32 7, i32 0, i32 0, i32 2
  %2 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mask, align 4
  %4 = ptrtoint ptr %write_fifo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %write_fifo, align 4
  %out = getelementptr inbounds %struct.dbc_port, ptr %1, i32 0, i32 7, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %out, align 4
  %sub.neg = add i32 %3, 1
  %add = sub i32 %sub.neg, %5
  %sub6 = add i32 %add, %7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port_lock, i32 noundef %call2) #5
  ret i32 %sub6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dbc_tty_chars_in_buffer(ptr nocapture noundef readonly %tty) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %port_lock = getelementptr inbounds %struct.dbc_port, ptr %1, i32 0, i32 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port_lock) #5
  %write_fifo = getelementptr inbounds %struct.dbc_port, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %write_fifo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %write_fifo, align 4
  %out = getelementptr inbounds %struct.dbc_port, ptr %1, i32 0, i32 7, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %out, align 4
  %sub = sub i32 %3, %5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port_lock, i32 noundef %call2) #5
  ret i32 %sub
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dbc_tty_unthrottle(ptr nocapture noundef readonly %tty) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %port_lock = getelementptr inbounds %struct.dbc_port, ptr %1, i32 0, i32 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port_lock) #5
  %state.i = getelementptr inbounds %struct.dbc_port, ptr %1, i32 0, i32 5, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.tasklet_schedule.exit_crit_edge

entry.tasklet_schedule.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %tasklet_schedule.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %push = getelementptr inbounds %struct.dbc_port, ptr %1, i32 0, i32 5
  tail call void @__tasklet_schedule(ptr noundef %push) #5
  br label %tasklet_schedule.exit

tasklet_schedule.exit:                            ; preds = %if.then.i, %entry.tasklet_schedule.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port_lock, i32 noundef %call2) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_port_install(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_port_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_close(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_in(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !15, !17, !18, !19, !20, !22, !23, !24, !26, !28, !29, !30, !31, !32, !34, !36, !38, !39, !40, !41}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @dbc_tty_driver, !1, !"dbc_tty_driver", i1 false, i1 false}
!1 = !{!"../drivers/usb/host/xhci-dbgtty.c", i32 20, i32 27}
!2 = !{ptr @dbc_driver, !3, !"dbc_driver", i1 false, i1 false}
!3 = !{!"../drivers/usb/host/xhci-dbgtty.c", i32 466, i32 32}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/usb/host/xhci-dbgtty.c", i32 445, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @xhci_dbc_tty_register_device._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @xhci_dbc_tty_register_device._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @xhci_dbc_tty_init_port.__key, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/usb/host/xhci-dbgtty.c", i32 384, i32 2}
!14 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/usb/host/xhci-dbgtty.c", i32 316, i32 4}
!17 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @dbc_rx_push._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @dbc_rx_push._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/usb/host/xhci-dbgtty.c", i32 354, i32 5}
!22 = !{ptr @dbc_rx_push._entry.8, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @dbc_rx_push._entry_ptr.10, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @dbc_port_ops, !25, !"dbc_port_ops", i1 false, i1 false}
!25 = !{!"../drivers/usb/host/xhci-dbgtty.c", i32 376, i32 41}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/usb/host/xhci-dbgtty.c", i32 129, i32 3}
!28 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @dbc_write_complete._entry, !27, !"_entry", i1 false, i1 false}
!31 = !{ptr @dbc_write_complete._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/usb/host/xhci-dbgtty.c", i32 526, i32 32}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/usb/host/xhci-dbgtty.c", i32 527, i32 25}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/usb/host/xhci-dbgtty.c", i32 541, i32 3}
!38 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @dbc_tty_init._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @dbc_tty_init._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @dbc_tty_ops, !42, !"dbc_tty_ops", i1 false, i1 false}
!42 = !{!"../drivers/usb/host/xhci-dbgtty.c", i32 279, i32 36}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!52 = !{i8 0, i8 2}
!53 = !{i64 2154678401}
