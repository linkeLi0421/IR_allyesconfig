; ModuleID = '/llk/IR_all_yes/drivers/tty/serial/rp2.c_pt.bc'
source_filename = "../drivers/tty/serial/rp2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.uart_driver = type { ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.uart_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.70, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.70 = type { ptr }
%struct.rp2_card = type { ptr, ptr, i32, i32, i32, i32, ptr, ptr, %struct.spinlock }
%struct.rp2_uart_port = type { %struct.uart_port, i32, i32, ptr, ptr, ptr, ptr }
%struct.uart_port = type { %struct.spinlock, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, ptr, %struct.uart_icount, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.serial_rs485, ptr, %struct.serial_iso7816, ptr }
%struct.uart_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.serial_rs485 = type { i32, i32, i32, [5 x i32] }
%struct.serial_iso7816 = type { i32, i32, i32, i32, i32, [5 x i32] }
%struct.firmware = type { i32, ptr, ptr }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.uart_state = type { %struct.tty_port, i32, %struct.circ_buf, %struct.atomic_t, %struct.wait_queue_head, ptr }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.37, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.37 = type { ptr }
%struct.llist_head = type { ptr }
%struct.circ_buf = type { ptr, i32, i32 }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.38, %struct.anon.39, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.38 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.39 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }

@rp2_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @rp2_pci_tbl, ptr @rp2_probe, ptr @rp2_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@rp2_uart_driver = internal global { %struct.uart_driver, [60 x i8] } { %struct.uart_driver { ptr null, ptr @.str, ptr @.str.19, i32 0, i32 0, i32 32, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__initcall__kmod_rp2__238_858_rp2_uart_init6 = internal global ptr @rp2_uart_init, section ".initcall6.init", align 4
@__exitcall_rp2_uart_exit = internal global ptr @rp2_uart_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description239 = internal constant [59 x i8] c"rp2.description=Comtrol RocketPort EXPRESS/INFINITY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author240 = internal constant [47 x i8] c"rp2.author=Kevin Cernekee <cernekee@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file241 = internal constant [32 x i8] c"rp2.file=drivers/tty/serial/rp2\00", section ".modinfo", align 1
@__UNIQUE_ID_license242 = internal constant [19 x i8] c"rp2.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware243 = internal constant [20 x i8] c"rp2.firmware=rp2.fw\00", section ".modinfo", align 1
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rp2\00", [28 x i8] zeroinitializer }, align 32
@rp2_pci_tbl = internal constant { [28 x %struct.pci_device_id], [224 x i8] } { [28 x %struct.pci_device_id] [%struct.pci_device_id { i32 4606, i32 64, i32 -1, i32 -1, i32 0, i32 0, i32 2048, i32 0 }, %struct.pci_device_id { i32 4606, i32 65, i32 -1, i32 -1, i32 0, i32 0, i32 8192, i32 0 }, %struct.pci_device_id { i32 4606, i32 66, i32 -1, i32 -1, i32 0, i32 0, i32 2048, i32 0 }, %struct.pci_device_id { i32 4606, i32 67, i32 -1, i32 -1, i32 0, i32 0, i32 4096, i32 0 }, %struct.pci_device_id { i32 4606, i32 68, i32 -1, i32 -1, i32 0, i32 0, i32 1024, i32 0 }, %struct.pci_device_id { i32 4606, i32 69, i32 -1, i32 -1, i32 0, i32 0, i32 2048, i32 0 }, %struct.pci_device_id { i32 4606, i32 70, i32 -1, i32 -1, i32 0, i32 0, i32 1024, i32 0 }, %struct.pci_device_id { i32 4606, i32 71, i32 -1, i32 -1, i32 0, i32 0, i32 1024, i32 0 }, %struct.pci_device_id { i32 4606, i32 74, i32 -1, i32 -1, i32 0, i32 0, i32 1024, i32 0 }, %struct.pci_device_id { i32 4606, i32 75, i32 -1, i32 -1, i32 0, i32 0, i32 2048, i32 0 }, %struct.pci_device_id { i32 4606, i32 76, i32 -1, i32 -1, i32 0, i32 0, i32 2048, i32 0 }, %struct.pci_device_id { i32 4606, i32 77, i32 -1, i32 -1, i32 0, i32 0, i32 1024, i32 0 }, %struct.pci_device_id { i32 4606, i32 78, i32 -1, i32 -1, i32 0, i32 0, i32 512, i32 0 }, %struct.pci_device_id { i32 4606, i32 79, i32 -1, i32 -1, i32 0, i32 0, i32 513, i32 0 }, %struct.pci_device_id { i32 4606, i32 80, i32 -1, i32 -1, i32 0, i32 0, i32 1024, i32 0 }, %struct.pci_device_id { i32 4606, i32 81, i32 -1, i32 -1, i32 0, i32 0, i32 2048, i32 0 }, %struct.pci_device_id { i32 4606, i32 82, i32 -1, i32 -1, i32 0, i32 0, i32 2049, i32 0 }, %struct.pci_device_id { i32 4606, i32 96, i32 -1, i32 -1, i32 0, i32 0, i32 2048, i32 0 }, %struct.pci_device_id { i32 4606, i32 97, i32 -1, i32 -1, i32 0, i32 0, i32 8192, i32 0 }, %struct.pci_device_id { i32 4606, i32 98, i32 -1, i32 -1, i32 0, i32 0, i32 2048, i32 0 }, %struct.pci_device_id { i32 4606, i32 99, i32 -1, i32 -1, i32 0, i32 0, i32 4096, i32 0 }, %struct.pci_device_id { i32 4606, i32 100, i32 -1, i32 -1, i32 0, i32 0, i32 1024, i32 0 }, %struct.pci_device_id { i32 4606, i32 101, i32 -1, i32 -1, i32 0, i32 0, i32 2048, i32 0 }, %struct.pci_device_id { i32 4606, i32 102, i32 -1, i32 -1, i32 0, i32 0, i32 1024, i32 0 }, %struct.pci_device_id { i32 4606, i32 103, i32 -1, i32 -1, i32 0, i32 0, i32 1024, i32 0 }, %struct.pci_device_id { i32 4606, i32 104, i32 -1, i32 -1, i32 0, i32 0, i32 2048, i32 0 }, %struct.pci_device_id { i32 4606, i32 114, i32 -1, i32 -1, i32 0, i32 0, i32 2049, i32 0 }, %struct.pci_device_id zeroinitializer], [224 x i8] zeroinitializer }, align 32
@rp2_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&card->card_lock\00", [47 x i8] zeroinitializer }, align 32
@rp2_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 745, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"found new card with %d ports\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rp2_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/tty/serial/rp2.c\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rp2_probe._entry_ptr = internal global ptr @rp2_probe._entry, section ".printk_index", align 4
@rp2_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 750, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"too many ports (try increasing CONFIG_SERIAL_RP2_NR_UARTS)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@rp2_probe._entry_ptr.10 = internal global ptr @rp2_probe._entry.7, section ".printk_index", align 4
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rp2.fw\00", [25 x i8] zeroinitializer }, align 32
@rp2_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 765, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"cannot find '%s' firmware image\0A\00", [63 x i8] zeroinitializer }, align 32
@rp2_probe._entry_ptr.14 = internal global ptr @rp2_probe._entry.12, section ".printk_index", align 4
@rp2_minor_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.15, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@rp2_minor_next = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rp2_minor_lock\00", [17 x i8] zeroinitializer }, align 32
@rp2_uart_ops = internal constant { %struct.uart_ops, [56 x i8] } { %struct.uart_ops { ptr @rp2_uart_tx_empty, ptr @rp2_uart_set_mctrl, ptr @rp2_uart_get_mctrl, ptr @rp2_uart_stop_tx, ptr @rp2_uart_start_tx, ptr null, ptr null, ptr null, ptr @rp2_uart_stop_rx, ptr @rp2_uart_enable_ms, ptr @rp2_uart_break_ctl, ptr @rp2_uart_startup, ptr @rp2_uart_shutdown, ptr null, ptr @rp2_uart_set_termios, ptr null, ptr null, ptr @rp2_uart_type, ptr @rp2_uart_release_port, ptr @rp2_uart_request_port, ptr @rp2_uart_config_port, ptr @rp2_uart_verify_port, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@rp2_load_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.4, i32 706, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"error registering port %d: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rp2_load_firmware\00", [46 x i8] zeroinitializer }, align 32
@rp2_load_firmware._entry_ptr = internal global ptr @rp2_load_firmware._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"RocketPort 2 UART\00", [46 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ttyRP\00", [26 x i8] zeroinitializer }, align 32
@___asan_gen_.20 = private unnamed_addr constant [15 x i8] c"rp2_pci_driver\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 828, i32 26 }
@___asan_gen_.23 = private unnamed_addr constant [16 x i8] c"rp2_uart_driver\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 169, i32 27 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 829, i32 11 }
@___asan_gen_.29 = private unnamed_addr constant [12 x i8] c"rp2_pci_tbl\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 790, i32 35 }
@___asan_gen_.32 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 729, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 745, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 749, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 762, i32 29 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 764, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant [15 x i8] c"rp2_minor_lock\00", align 1
@___asan_gen_.77 = private unnamed_addr constant [15 x i8] c"rp2_minor_next\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 211, i32 12 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 210, i32 8 }
@___asan_gen_.83 = private unnamed_addr constant [13 x i8] c"rp2_uart_ops\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 576, i32 30 }
@___asan_gen_.86 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 705, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 547, i32 36 }
@___asan_gen_.98 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.99 = private constant [28 x i8] c"../drivers/tty/serial/rp2.c\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 172, i32 16 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @__UNIQUE_ID_author240, ptr @__UNIQUE_ID_description239, ptr @__UNIQUE_ID_file241, ptr @__UNIQUE_ID_firmware243, ptr @__UNIQUE_ID_license242, ptr @__exitcall_rp2_uart_exit, ptr @__initcall__kmod_rp2__238_858_rp2_uart_init6, ptr @rp2_load_firmware._entry, ptr @rp2_load_firmware._entry_ptr, ptr @rp2_probe._entry, ptr @rp2_probe._entry.12, ptr @rp2_probe._entry.7, ptr @rp2_probe._entry_ptr, ptr @rp2_probe._entry_ptr.10, ptr @rp2_probe._entry_ptr.14, ptr @rp2_uart_exit, ptr @rp2_pci_driver, ptr @rp2_uart_driver, ptr @.str, ptr @rp2_pci_tbl, ptr @rp2_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @rp2_minor_lock, ptr @rp2_minor_next, ptr @.str.15, ptr @rp2_uart_ops, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rp2_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rp2_uart_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rp2_pci_tbl to i32), i32 896, i32 1120, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rp2_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rp2_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rp2_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rp2_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rp2_minor_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rp2_minor_next to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rp2_uart_ops to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rp2_load_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rp2_uart_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @pci_unregister_driver(ptr noundef nonnull @rp2_pci_driver) #9
  tail call void @uart_unregister_driver(ptr noundef nonnull @rp2_uart_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rp2_uart_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @uart_register_driver(ptr noundef nonnull @rp2_uart_driver) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @__pci_register_driver(ptr noundef nonnull @rp2_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @uart_unregister_driver(ptr noundef nonnull @rp2_uart_driver) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then3 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rp2_probe(ptr noundef %pdev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #9
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !68
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 76, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %card_lock = getelementptr inbounds %struct.rp2_card, ptr %call.i, i32 0, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %card_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @rp2_probe.__key, i16 noundef signext 3) #9
  %call2 = tail call i32 @pcim_enable_device(ptr noundef %pdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @pcim_iomap_regions_request_all(ptr noundef %pdev, i32 noundef 3, ptr noundef nonnull @.str) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %call10 = tail call ptr @pcim_iomap_table(ptr noundef %pdev) #9
  %2 = ptrtoint ptr %call10 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call10, align 4
  %bar0 = getelementptr inbounds %struct.rp2_card, ptr %call.i, i32 0, i32 6
  %4 = ptrtoint ptr %bar0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %bar0, align 4
  %arrayidx11 = getelementptr ptr, ptr %call10, i32 1
  %5 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx11, align 4
  %bar1 = getelementptr inbounds %struct.rp2_card, ptr %call.i, i32 0, i32 7
  %7 = ptrtoint ptr %bar1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %bar1, align 4
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %pdev, ptr %call.i, align 4
  %n_ports = getelementptr inbounds %struct.rp2_card, ptr %call.i, i32 0, i32 2
  %smpte = getelementptr inbounds %struct.rp2_card, ptr %call.i, i32 0, i32 5
  %driver_data.i = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %9 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %driver_data.i, align 4
  %shr.i = lshr i32 %10, 8
  %11 = ptrtoint ptr %n_ports to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %shr.i, ptr %n_ports, align 4
  %and.i = and i32 %10, 255
  %12 = ptrtoint ptr %smpte to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and.i, ptr %smpte, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %shr.i) #12
  %13 = ptrtoint ptr %n_ports to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %n_ports, align 4
  %call19 = tail call fastcc i32 @rp2_alloc_ports(i32 noundef %14)
  %minor_start = getelementptr inbounds %struct.rp2_card, ptr %call.i, i32 0, i32 4
  %15 = ptrtoint ptr %minor_start to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call19, ptr %minor_start, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp = icmp slt i32 %call19, 0
  br i1 %cmp, label %do.end24, label %if.end26

do.end24:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #12
  br label %cleanup

if.end26:                                         ; preds = %if.end9
  tail call fastcc void @rp2_init_card(ptr noundef nonnull %call.i)
  %16 = ptrtoint ptr %n_ports to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %n_ports, align 4
  %18 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %17, i32 384) #9
  %19 = extractvalue { i32, i1 } %18, 1
  br i1 %19, label %if.end26.cleanup_crit_edge, label %devm_kcalloc.exit, !prof !69

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.end26
  %20 = extractvalue { i32, i1 } %18, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %20, i32 noundef 3520) #9
  %tobool30.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool30.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end32

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end32:                                         ; preds = %devm_kcalloc.exit
  %ports33 = getelementptr inbounds %struct.rp2_card, ptr %call.i, i32 0, i32 1
  %21 = ptrtoint ptr %ports33 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call5.i.i, ptr %ports33, align 4
  %call35 = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef nonnull @.str.11, ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %do.end40, label %if.end42

do.end40:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.11) #12
  br label %cleanup

if.end42:                                         ; preds = %if.end32
  %22 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fw, align 4
  %call43 = call fastcc i32 @rp2_load_firmware(ptr noundef nonnull %call.i, ptr noundef %23)
  %24 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %25) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %if.end42.cleanup_crit_edge, label %if.end46

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end46:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %26 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %irq, align 4
  %call.i95 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %27, ptr noundef nonnull @rp2_uart_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %if.end42.cleanup_crit_edge, %do.end40, %devm_kcalloc.exit.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %do.end24, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end24 ], [ %call35, %do.end40 ], [ -12, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call6, %if.end5.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ %call43, %if.end42.cleanup_crit_edge ], [ %call.i95, %if.end46 ], [ -12, %if.end26.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rp2_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %initialized_ports.i = getelementptr inbounds %struct.rp2_card, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %initialized_ports.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %initialized_ports.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp6.i = icmp sgt i32 %3, 0
  br i1 %cmp6.i, label %for.body.lr.ph.i, label %entry.rp2_remove_ports.exit_crit_edge

entry.rp2_remove_ports.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rp2_remove_ports.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %ports.i = getelementptr inbounds %struct.rp2_card, ptr %1, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.07.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ports.i, align 4
  %arrayidx.i = getelementptr %struct.rp2_uart_port, ptr %5, i32 %i.07.i
  %call.i = tail call i32 @uart_remove_one_port(ptr noundef nonnull @rp2_uart_driver, ptr noundef %arrayidx.i) #9
  %inc.i = add nuw nsw i32 %i.07.i, 1
  %6 = ptrtoint ptr %initialized_ports.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %initialized_ports.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %7
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.rp2_remove_ports.exit_crit_edge

for.body.i.rp2_remove_ports.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rp2_remove_ports.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

rp2_remove_ports.exit:                            ; preds = %for.body.i.rp2_remove_ports.exit_crit_edge, %entry.rp2_remove_ports.exit_crit_edge
  %8 = ptrtoint ptr %initialized_ports.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %initialized_ports.i, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_iomap_regions_request_all(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcim_iomap_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rp2_alloc_ports(i32 noundef %n_ports) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @rp2_minor_lock) #9
  %0 = load i32, ptr @rp2_minor_next, align 4
  %add = add i32 %0, %n_ports
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %add)
  %cmp = icmp slt i32 %add, 33
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  store i32 %add, ptr @rp2_minor_next, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %0, %if.then ], [ -28, %entry.if.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @rp2_minor_lock) #9
  ret i32 %ret.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rp2_init_card(ptr nocapture noundef readonly %card) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !70
  tail call void @arm_heavy_mb() #9
  %bar0 = getelementptr inbounds %struct.rp2_card, ptr %card, i32 0, i32 6
  %0 = ptrtoint ptr %bar0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bar0, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 67108864) #9, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !72
  tail call void @arm_heavy_mb() #9
  %2 = ptrtoint ptr %bar0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bar0, align 4
  %add.ptr4 = getelementptr i8, ptr %3, i32 284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 0) #9, !srcloc !71
  %bar1.i = getelementptr inbounds %struct.rp2_card, ptr %card, i32 0, i32 7
  %4 = ptrtoint ptr %bar1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bar1.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !73
  tail call void @arm_heavy_mb() #9
  %add.ptr1.i = getelementptr i8, ptr %5, i32 3340
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr1.i, i16 256) #9, !srcloc !74
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr1.i) #9, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !76
  tail call void @msleep(i32 noundef 100) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !77
  tail call void @arm_heavy_mb() #9
  %add.ptr7.i = getelementptr i8, ptr %5, i32 3072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 0) #9, !srcloc !71
  %add.ptr10.i = getelementptr i8, ptr %5, i32 3332
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr10.i) #9, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !78
  %8 = and i16 %7, -4
  %9 = or i16 %8, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !79
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr10.i, i16 %9) #9, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !80
  tail call void @arm_heavy_mb() #9
  %add.ptr22.i = getelementptr i8, ptr %5, i32 3080
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i, i32 -65536) #9, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !81
  tail call void @arm_heavy_mb() #9
  %add.ptr26.i = getelementptr i8, ptr %5, i32 3328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26.i, i32 4096) #9, !srcloc !71
  %n_ports = getelementptr inbounds %struct.rp2_card, ptr %card, i32 0, i32 2
  %10 = ptrtoint ptr %n_ports to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %n_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %11)
  %cmp = icmp sgt i32 %11, 15
  br i1 %cmp, label %if.then, label %entry.do.body5_crit_edge

entry.do.body5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %bar1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bar1.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !73
  tail call void @arm_heavy_mb() #9
  %add.ptr1.i15 = getelementptr i8, ptr %13, i32 7436
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr1.i15, i16 256) #9, !srcloc !74
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr1.i15) #9, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !76
  tail call void @msleep(i32 noundef 100) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !77
  tail call void @arm_heavy_mb() #9
  %add.ptr7.i16 = getelementptr i8, ptr %13, i32 7168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i16, i32 0) #9, !srcloc !71
  %add.ptr10.i17 = getelementptr i8, ptr %13, i32 7428
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr10.i17) #9, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !78
  %16 = and i16 %15, -4
  %17 = or i16 %16, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !79
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr10.i17, i16 %17) #9, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !80
  tail call void @arm_heavy_mb() #9
  %add.ptr22.i18 = getelementptr i8, ptr %13, i32 7176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i18, i32 -65536) #9, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !81
  tail call void @arm_heavy_mb() #9
  %add.ptr26.i19 = getelementptr i8, ptr %13, i32 7424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26.i19, i32 4096) #9, !srcloc !71
  br label %do.body5

do.body5:                                         ; preds = %if.then, %entry.do.body5_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !82
  tail call void @arm_heavy_mb() #9
  %18 = ptrtoint ptr %bar0 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bar0, align 4
  %add.ptr8 = getelementptr i8, ptr %19, i32 492
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 16777216) #9, !srcloc !71
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rp2_load_firmware(ptr noundef %card, ptr nocapture noundef readonly %fw) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %arrayidx = getelementptr %struct.pci_dev, ptr %1, i32 0, i32 47, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 8
  %n_ports = getelementptr inbounds %struct.rp2_card, ptr %card, i32 0, i32 2
  %4 = ptrtoint ptr %n_ports to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp86 = icmp sgt i32 %5, 0
  br i1 %cmp86, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %ports = getelementptr inbounds %struct.rp2_card, ptr %card, i32 0, i32 1
  %bar1 = getelementptr inbounds %struct.rp2_card, ptr %card, i32 0, i32 7
  %minor_start = getelementptr inbounds %struct.rp2_card, ptr %card, i32 0, i32 4
  %data.i = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %initialized_ports = getelementptr inbounds %struct.rp2_card, ptr %card, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.087 = phi i32 [ 0, %for.body.lr.ph ], [ %inc32, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ports, align 4
  %arrayidx1 = getelementptr %struct.rp2_uart_port, ptr %7, i32 %i.087
  %rem = and i32 %i.087, 15
  %8 = ptrtoint ptr %bar1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bar1, align 4
  %asic_base = getelementptr %struct.rp2_uart_port, ptr %7, i32 %i.087, i32 4
  %10 = ptrtoint ptr %asic_base to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %asic_base, align 4
  %11 = load ptr, ptr %bar1, align 4
  %mul = shl nuw nsw i32 %rem, 6
  %add.ptr3 = getelementptr i8, ptr %11, i32 %mul
  %base = getelementptr %struct.rp2_uart_port, ptr %7, i32 %i.087, i32 5
  %12 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %add.ptr3, ptr %base, align 4
  %13 = load ptr, ptr %bar1, align 4
  %add.ptr5 = getelementptr i8, ptr %13, i32 1024
  %mul6 = shl nuw nsw i32 %rem, 7
  %add.ptr7 = getelementptr i8, ptr %add.ptr5, i32 %mul6
  %ucode = getelementptr %struct.rp2_uart_port, ptr %7, i32 %i.087, i32 6
  %14 = ptrtoint ptr %ucode to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr7, ptr %ucode, align 4
  %card8 = getelementptr %struct.rp2_uart_port, ptr %7, i32 %i.087, i32 3
  %15 = ptrtoint ptr %card8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %card, ptr %card8, align 4
  %idx = getelementptr %struct.rp2_uart_port, ptr %7, i32 %i.087, i32 1
  %16 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %rem, ptr %idx, align 4
  %17 = ptrtoint ptr %minor_start to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %minor_start, align 4
  %add = add i32 %18, %i.087
  %line = getelementptr inbounds %struct.uart_port, ptr %arrayidx1, i32 0, i32 41
  %19 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add, ptr %line, align 4
  %20 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  %dev10 = getelementptr inbounds %struct.uart_port, ptr %arrayidx1, i32 0, i32 45
  %22 = ptrtoint ptr %dev10 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %dev, ptr %dev10, align 4
  %type = getelementptr inbounds %struct.uart_port, ptr %arrayidx1, i32 0, i32 38
  %23 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 102, ptr %type, align 4
  %iotype = getelementptr inbounds %struct.uart_port, ptr %arrayidx1, i32 0, i32 26
  %24 = ptrtoint ptr %iotype to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 3, ptr %iotype, align 2
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %arrayidx1, i32 0, i32 22
  %25 = ptrtoint ptr %uartclk to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 44236800, ptr %uartclk, align 4
  %regshift = getelementptr inbounds %struct.uart_port, ptr %arrayidx1, i32 0, i32 25
  %26 = ptrtoint ptr %regshift to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 2, ptr %regshift, align 1
  %fifosize = getelementptr inbounds %struct.uart_port, ptr %arrayidx1, i32 0, i32 23
  %27 = ptrtoint ptr %fifosize to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 512, ptr %fifosize, align 4
  %ops = getelementptr inbounds %struct.uart_port, ptr %arrayidx1, i32 0, i32 39
  %28 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @rp2_uart_ops, ptr %ops, align 4
  %29 = load ptr, ptr %card, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 46
  %30 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %irq, align 4
  %irq12 = getelementptr inbounds %struct.uart_port, ptr %arrayidx1, i32 0, i32 20
  %32 = ptrtoint ptr %irq12 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %irq12, align 4
  %membase = getelementptr inbounds %struct.uart_port, ptr %arrayidx1, i32 0, i32 2
  %33 = ptrtoint ptr %membase to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %add.ptr3, ptr %membase, align 4
  %add16 = add i32 %mul, %3
  %mapbase = getelementptr inbounds %struct.uart_port, ptr %arrayidx1, i32 0, i32 43
  %34 = ptrtoint ptr %mapbase to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %add16, ptr %mapbase, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %i.087)
  %cmp17 = icmp ugt i32 %i.087, 15
  br i1 %cmp17, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr19 = getelementptr i8, ptr %9, i32 4096
  %35 = ptrtoint ptr %asic_base to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %add.ptr19, ptr %asic_base, align 4
  %add.ptr21 = getelementptr i8, ptr %add.ptr3, i32 4096
  %36 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %add.ptr21, ptr %base, align 4
  %add.ptr23 = getelementptr i8, ptr %add.ptr7, i32 4096
  %37 = ptrtoint ptr %ucode to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %add.ptr23, ptr %ucode, align 4
  %add25 = add i32 %add16, 4096
  %38 = ptrtoint ptr %mapbase to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %add25, ptr %mapbase, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !83
  tail call void @arm_heavy_mb() #9
  %39 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %40, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 536870912) #9, !srcloc !71
  %41 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base, align 4
  %add.ptr2.i = getelementptr i8, ptr %42, i32 24
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #9, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !85
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 214748) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !86
  tail call void @arm_heavy_mb() #9
  %45 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base, align 4
  %add.ptr8.i = getelementptr i8, ptr %46, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 0) #9, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !87
  tail call void @arm_heavy_mb() #9
  %47 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base, align 4
  %add.ptr13.i = getelementptr i8, ptr %48, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 0) #9, !srcloc !71
  %49 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base, align 4
  %add.ptr17.i = getelementptr i8, ptr %50, i32 24
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i) #9, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !88
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 214748) #9
  %53 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %54, i32 24
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #9, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !89
  %56 = or i32 %55, 402653184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !90
  tail call void @arm_heavy_mb() #9
  %57 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %base, align 4
  %add.ptr4.i.i.i.i = getelementptr i8, ptr %58, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i.i.i, i32 %56) #9, !srcloc !71
  %59 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %60, i32 24
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !91
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %62(i32 noundef 2147480) #9
  %63 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %base, align 4
  %add.ptr.i.i5.i.i = getelementptr i8, ptr %64, i32 24
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i5.i.i) #9, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !89
  %66 = and i32 %65, -402653185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !90
  tail call void @arm_heavy_mb() #9
  %67 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base, align 4
  %add.ptr4.i.i6.i.i = getelementptr i8, ptr %68, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i6.i.i, i32 %66) #9, !srcloc !71
  %69 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %fw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp2253.i = icmp sgt i32 %70, 0
  br i1 %cmp2253.i, label %if.end.do.body23.i_crit_edge, label %if.end.rp2_init_port.exit_crit_edge

if.end.rp2_init_port.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rp2_init_port.exit

if.end.do.body23.i_crit_edge:                     ; preds = %if.end
  br label %do.body23.i

do.body23.i:                                      ; preds = %do.body23.i.do.body23.i_crit_edge, %if.end.do.body23.i_crit_edge
  %i.054.i = phi i32 [ %inc.i, %do.body23.i.do.body23.i_crit_edge ], [ 0, %if.end.do.body23.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !92
  tail call void @arm_heavy_mb() #9
  %71 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %data.i, align 4
  %arrayidx.i = getelementptr i8, ptr %72, i32 %i.054.i
  %73 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx.i, align 1
  %75 = ptrtoint ptr %ucode to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ucode, align 4
  %add.ptr26.i = getelementptr i8, ptr %76, i32 %i.054.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr26.i, i8 %74) #9, !srcloc !93
  %inc.i = add nuw nsw i32 %i.054.i, 1
  %77 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %fw, align 4
  %79 = tail call i32 @llvm.smin.i32(i32 %78, i32 63) #9
  %cmp22.i = icmp slt i32 %inc.i, %79
  br i1 %cmp22.i, label %do.body23.i.do.body23.i_crit_edge, label %do.body23.i.rp2_init_port.exit_crit_edge

do.body23.i.rp2_init_port.exit_crit_edge:         ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rp2_init_port.exit

do.body23.i.do.body23.i_crit_edge:                ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body23.i

rp2_init_port.exit:                               ; preds = %do.body23.i.rp2_init_port.exit_crit_edge, %if.end.rp2_init_port.exit_crit_edge
  tail call fastcc void @__rp2_uart_set_termios(ptr noundef %arrayidx1, i32 noundef 2224, i32 noundef 0, i32 noundef 288) #9
  %80 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %base, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %81, i32 20
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #9, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !89
  %83 = and i32 %82, -15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !90
  tail call void @arm_heavy_mb() #9
  %84 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %base, align 4
  %add.ptr4.i.i.i = getelementptr i8, ptr %85, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i.i, i32 %83) #9, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !94
  tail call void @arm_heavy_mb() #9
  %86 = ptrtoint ptr %ucode to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ucode, align 4
  %add.ptr31.i = getelementptr i8, ptr %87, i32 55
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr31.i, i8 8) #9, !srcloc !93
  %88 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %base, align 4
  %add.ptr.i49.i = getelementptr i8, ptr %89, i32 24
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49.i) #9, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !89
  %91 = and i32 %90, -1191182337
  %92 = or i32 %91, 1090519040
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !90
  tail call void @arm_heavy_mb() #9
  %93 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %base, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %94, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %92) #9, !srcloc !71
  %95 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %base, align 4
  %add.ptr.i.i51.i = getelementptr i8, ptr %96, i32 20
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i51.i) #9, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !89
  %98 = or i32 %97, 536870913
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !90
  tail call void @arm_heavy_mb() #9
  %99 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %base, align 4
  %add.ptr4.i.i52.i = getelementptr i8, ptr %100, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i52.i, i32 %98) #9, !srcloc !71
  %call = tail call i32 @uart_add_one_port(ptr noundef nonnull @rp2_uart_driver, ptr noundef %arrayidx1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.inc, label %do.end

do.end:                                           ; preds = %rp2_init_port.exit
  %101 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %card, align 4
  %dev28 = getelementptr inbounds %struct.pci_dev, ptr %102, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev28, ptr noundef nonnull @.str.16, i32 noundef %i.087, i32 noundef %call) #12
  %103 = ptrtoint ptr %initialized_ports to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %initialized_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %cmp6.i = icmp sgt i32 %104, 0
  br i1 %cmp6.i, label %do.end.for.body.i_crit_edge, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end.for.body.i_crit_edge:                      ; preds = %do.end
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end.for.body.i_crit_edge
  %i.07.i = phi i32 [ %inc.i82, %for.body.i.for.body.i_crit_edge ], [ 0, %do.end.for.body.i_crit_edge ]
  %105 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %ports, align 4
  %arrayidx.i81 = getelementptr %struct.rp2_uart_port, ptr %106, i32 %i.07.i
  %call.i = tail call i32 @uart_remove_one_port(ptr noundef nonnull @rp2_uart_driver, ptr noundef %arrayidx.i81) #9
  %inc.i82 = add nuw nsw i32 %i.07.i, 1
  %107 = ptrtoint ptr %initialized_ports to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %initialized_ports, align 4
  %cmp.i = icmp slt i32 %inc.i82, %108
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.cleanup_crit_edge

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

cleanup:                                          ; preds = %for.body.i.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %109 = ptrtoint ptr %initialized_ports to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 0, ptr %initialized_ports, align 4
  br label %for.end

for.inc:                                          ; preds = %rp2_init_port.exit
  %110 = ptrtoint ptr %initialized_ports to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %initialized_ports, align 4
  %inc = add i32 %111, 1
  store i32 %inc, ptr %initialized_ports, align 4
  %inc32 = add nuw nsw i32 %i.087, 1
  %112 = ptrtoint ptr %n_ports to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %n_ports, align 4
  %cmp = icmp slt i32 %inc32, %113
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cleanup, %entry.for.end_crit_edge
  %rc.1 = phi i32 [ %call, %cleanup ], [ 0, %entry.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  ret i32 %rc.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rp2_uart_interrupt(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @rp2_asic_interrupt(ptr noundef %dev_id, i32 noundef 0)
  %n_ports = getelementptr inbounds %struct.rp2_card, ptr %dev_id, i32 0, i32 2
  %0 = ptrtoint ptr %n_ports to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %1)
  %cmp = icmp sgt i32 %1, 15
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call fastcc i32 @rp2_asic_interrupt(ptr noundef %dev_id, i32 noundef 1)
  %add = add i32 %call1, %call
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %handled.0 = phi i32 [ %add, %if.then ], [ %call, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %handled.0)
  %tobool.not = icmp ne i32 %handled.0, 0
  %cond = zext i1 %tobool.not to i32
  ret i32 %cond
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_add_one_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rp2_uart_tx_empty(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #9
  %base = getelementptr inbounds %struct.rp2_uart_port, ptr %port, i32 0, i32 5
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 14
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #9, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !95
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call4) #9
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  %cond = zext i1 %tobool.not to i32
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rp2_uart_set_mctrl(ptr nocapture noundef readonly %port, i32 noundef %mctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and = shl i32 %mctrl, 25
  %0 = and i32 %and, 67108864
  %and1 = shl i32 %mctrl, 23
  %1 = and i32 %and1, 33554432
  %or = or i32 %0, %1
  %and4 = shl i32 %mctrl, 12
  %2 = and i32 %and4, 134217728
  %or7 = or i32 %or, %2
  %base.i = getelementptr inbounds %struct.rp2_uart_port, ptr %port, i32 0, i32 5
  %3 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 20
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !89
  %6 = and i32 %5, -15
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %or.i = or i32 %or7, %7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !90
  tail call void @arm_heavy_mb() #9
  %8 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %10, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %8) #9, !srcloc !71
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rp2_uart_get_mctrl(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.rp2_uart_port, ptr %port, i32 0, i32 5
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !84
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !96
  %and = shl i32 %3, 3
  %4 = and i32 %and, 64
  %and3 = shl i32 %3, 4
  %5 = and i32 %and3, 256
  %and6 = and i32 %3, 32
  %and10 = shl i32 %3, 1
  %6 = and i32 %and10, 128
  %or = or i32 %5, %and6
  %or9 = or i32 %or, %4
  %or13 = or i32 %or9, %6
  ret i32 %or13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rp2_uart_stop_tx(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i.i = getelementptr inbounds %struct.rp2_uart_port, ptr %port, i32 0, i32 5
  %0 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 20
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !89
  %3 = and i32 %2, -2049
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !90
  tail call void @arm_heavy_mb() #9
  %4 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %5, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %3) #9, !srcloc !71
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rp2_uart_start_tx(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i.i = getelementptr inbounds %struct.rp2_uart_port, ptr %port, i32 0, i32 5
  %0 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 20
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !89
  %3 = or i32 %2, 2048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !90
  tail call void @arm_heavy_mb() #9
  %4 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %5, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %3) #9, !srcloc !71
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rp2_uart_stop_rx(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i.i = getelementptr inbounds %struct.rp2_uart_port, ptr %port, i32 0, i32 5
  %0 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 20
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !89
  %3 = and i32 %2, -67108865
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !90
  tail call void @arm_heavy_mb() #9
  %4 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %5, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %3) #9, !srcloc !71
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rp2_uart_enable_ms(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i.i = getelementptr inbounds %struct.rp2_uart_port, ptr %port, i32 0, i32 5
  %0 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 20
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !89
  %3 = or i32 %2, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !90
  tail call void @arm_heavy_mb() #9
  %4 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %5, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %3) #9, !srcloc !71
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rp2_uart_break_ctl(ptr noundef %port, i32 noundef %break_state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %break_state)
  %tobool.not = icmp eq i32 %break_state, 0
  %cond = select i1 %tobool.not, i32 0, i32 268435456
  %base.i = getelementptr inbounds %struct.rp2_uart_port, ptr %port, i32 0, i32 5
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 20
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !89
  %3 = and i32 %2, -17
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %or.i = or i32 %4, %cond
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !90
  tail call void @arm_heavy_mb() #9
  %5 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %7, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %5) #9, !srcloc !71
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call2) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rp2_uart_startup(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i.i.i = getelementptr inbounds %struct.rp2_uart_port, ptr %port, i32 0, i32 5
  %0 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 24
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #9, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !89
  %3 = or i32 %2, 402653184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !90
  tail call void @arm_heavy_mb() #9
  %4 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr4.i.i.i = getelementptr i8, ptr %5, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i.i, i32 %3) #9, !srcloc !71
  %6 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 24
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !91
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 2147480) #9
  %10 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i5.i = getelementptr i8, ptr %11, i32 24
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i5.i) #9, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !89
  %13 = and i32 %12, -402653185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !90
  tail call void @arm_heavy_mb() #9
  %14 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr4.i.i6.i = getelementptr i8, ptr %15, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i6.i, i32 %13) #9, !srcloc !71
  %16 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i6 = getelementptr i8, ptr %17, i32 20
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6) #9, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !89
  %19 = and i32 %18, -83886081
  %20 = or i32 %19, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !90
  tail call void @arm_heavy_mb() #9
  %21 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %22, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %20) #9, !srcloc !71
  %23 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i8 = getelementptr i8, ptr %24, i32 20
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8) #9, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !89
  %26 = and i32 %25, -402653185
  %27 = or i32 %26, 134217728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !90
  tail call void @arm_heavy_mb() #9
  %28 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr4.i11 = getelementptr i8, ptr %29, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i11, i32 %27) #9, !srcloc !71
  %30 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i13 = getelementptr i8, ptr %31, i32 16
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13) #9, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !90
  tail call void @arm_heavy_mb() #9
  %33 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr4.i14 = getelementptr i8, ptr %34, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i14, i32 %32) #9, !srcloc !71
  %idx = getelementptr inbounds %struct.rp2_uart_port, ptr %port, i32 0, i32 1
  %35 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %idx, align 4
  %card.i = getelementptr inbounds %struct.rp2_uart_port, ptr %port, i32 0, i32 3
  %37 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %card.i, align 4
  %card_lock.i = getelementptr inbounds %struct.rp2_card, ptr %38, i32 0, i32 8
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %card_lock.i) #9
  %asic_base.i = getelementptr inbounds %struct.rp2_uart_port, ptr %port, i32 0, i32 4
  %39 = ptrtoint ptr %asic_base.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %asic_base.i, align 4
  %add.ptr.i15 = getelementptr i8, ptr %40, i32 3080
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15) #9, !srcloc !84
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !97
  %shl8.i = shl nuw i32 1, %36
  %neg.i = xor i32 %shl8.i, -1
  %and.i16 = and i32 %42, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !98
  tail call void @arm_heavy_mb() #9
  %43 = tail call i32 @llvm.bswap.i32(i32 %and.i16) #9
  %44 = ptrtoint ptr %asic_base.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %asic_base.i, align 4
  %add.ptr13.i = getelementptr i8, ptr %45, i32 3080
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 %43) #9, !srcloc !71
  %46 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %card.i, align 4
  %card_lock15.i = getelementptr inbounds %struct.rp2_card, ptr %47, i32 0, i32 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %card_lock15.i, i32 noundef %call2.i) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rp2_uart_shutdown(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #9
  %base.i.i = getelementptr inbounds %struct.rp2_uart_port, ptr %port, i32 0, i32 5
  %0 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 20
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !89
  %3 = and i32 %2, -17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !90
  tail call void @arm_heavy_mb() #9
  %4 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %5, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %3) #9, !srcloc !71
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call2.i) #9
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #9
  %idx = getelementptr inbounds %struct.rp2_uart_port, ptr %port, i32 0, i32 1
  %6 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %idx, align 4
  %card.i = getelementptr inbounds %struct.rp2_uart_port, ptr %port, i32 0, i32 3
  %8 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card.i, align 4
  %card_lock.i = getelementptr inbounds %struct.rp2_card, ptr %9, i32 0, i32 8
  %call2.i12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %card_lock.i) #9
  %asic_base.i = getelementptr inbounds %struct.rp2_uart_port, ptr %port, i32 0, i32 4
  %10 = ptrtoint ptr %asic_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %asic_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 3080
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !84
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !97
  %shl8.i = shl nuw i32 1, %7
  %or.i = or i32 %13, %shl8.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !98
  tail call void @arm_heavy_mb() #9
  %14 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %15 = ptrtoint ptr %asic_base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %asic_base.i, align 4
  %add.ptr13.i = getelementptr i8, ptr %16, i32 3080
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 %14) #9, !srcloc !71
  %17 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %card.i, align 4
  %card_lock15.i = getelementptr inbounds %struct.rp2_card, ptr %18, i32 0, i32 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %card_lock15.i, i32 noundef %call2.i12) #9
  %19 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i13 = getelementptr i8, ptr %20, i32 16
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13) #9, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !90
  tail call void @arm_heavy_mb() #9
  %22 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %23, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %21) #9, !srcloc !71
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rp2_uart_set_termios(ptr noundef %port, ptr noundef %new, ptr noundef %old) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 22
  %0 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %uartclk, align 4
  %div29 = lshr i32 %1, 4
  %call1 = tail call i32 @uart_get_baud_rate(ptr noundef %port, ptr noundef %new, ptr noundef %old, i32 noundef 0, i32 noundef %div29) #9
  %call2 = tail call i32 @uart_get_divisor(ptr noundef %port, i32 noundef %call1) #9
  %call3 = tail call i32 @tty_termios_baud_rate(ptr noundef %new) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %entry.do.body4_crit_edge, label %if.then

entry.do.body4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body4

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @tty_termios_encode_baud_rate(ptr noundef %new, i32 noundef %call1, i32 noundef %call1) #9
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry.do.body4_crit_edge
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #9
  %c_cflag = getelementptr inbounds %struct.ktermios, ptr %new, i32 0, i32 2
  %2 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %c_cflag, align 4
  %and = shl i32 %3, 9
  %4 = and i32 %and, 65536
  %5 = xor i32 %4, 65536
  %ignore_status_mask = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 29
  %6 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %ignore_status_mask, align 4
  %7 = load i32, ptr %c_cflag, align 4
  %8 = ptrtoint ptr %new to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %new, align 4
  tail call fastcc void @__rp2_uart_set_termios(ptr noundef %port, i32 noundef %7, i32 noundef %9, i32 noundef %call2)
  %10 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %c_cflag, align 4
  tail call void @uart_update_timeout(ptr noundef %port, i32 noundef %11, i32 noundef %call1) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call6) #9
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @rp2_uart_type(ptr nocapture noundef readonly %port) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 102, i32 %1)
  %cmp = icmp eq i32 %1, 102
  %cond = select i1 %cmp, ptr @.str.18, ptr null
  ret ptr %cond
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @rp2_uart_release_port(ptr nocapture noundef %port) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rp2_uart_request_port(ptr nocapture noundef readnone %port) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @rp2_uart_config_port(ptr nocapture noundef writeonly %port, i32 noundef %flags) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %type = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 102, ptr %type, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rp2_uart_verify_port(ptr nocapture noundef readnone %port, ptr nocapture noundef readonly %ser) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ser to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ser, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %switch.selectcmp.case1 = icmp eq i32 %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 102, i32 %1)
  %switch.selectcmp.case2 = icmp eq i32 %1, 102
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %2 = select i1 %switch.selectcmp, i32 0, i32 -22
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_get_baud_rate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_get_divisor(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_baud_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_termios_encode_baud_rate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__rp2_uart_set_termios(ptr nocapture noundef readonly %up, i32 noundef %cfl, i32 noundef %ifl, i32 noundef %baud_div) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !99
  tail call void @arm_heavy_mb() #9
  %0 = trunc i32 %baud_div to i16
  %conv = add i16 %0, -1
  %1 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %base = getelementptr inbounds %struct.rp2_uart_port, ptr %up, i32 0, i32 5
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 28
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %1) #9, !srcloc !74
  %and = shl i32 %cfl, 4
  %4 = and i32 %and, 1024
  %and1 = and i32 %cfl, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %and1)
  %cmp = icmp eq i32 %and1, 48
  %cond3 = select i1 %cmp, i32 768, i32 0
  %or = or i32 %cond3, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and1)
  %cmp5 = icmp eq i32 %and1, 32
  %cond7 = select i1 %cmp5, i32 512, i32 0
  %or8 = or i32 %or, %cond7
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %and1)
  %cmp10 = icmp eq i32 %and1, 16
  %cond12 = select i1 %cmp10, i32 256, i32 0
  %or13 = or i32 %or8, %cond12
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 24
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !89
  %8 = and i32 %7, -458753
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %or.i = or i32 %or13, %9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !90
  tail call void @arm_heavy_mb() #9
  %10 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  %add.ptr4.i = getelementptr i8, ptr %12, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %10) #9, !srcloc !71
  %and19 = shl i32 %cfl, 23
  %13 = and i32 %and19, -2147483648
  %and22 = shl i32 %cfl, 21
  %14 = and i32 %and22, 1073741824
  %15 = or i32 %14, %13
  %and26 = lshr i32 %cfl, 1
  %16 = and i32 %and26, 536870912
  %17 = or i32 %15, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cfl)
  %tobool31.not.inv = icmp slt i32 %cfl, 0
  %cond32 = select i1 %tobool31.not.inv, i32 8388672, i32 0
  %18 = or i32 %17, %cond32
  %19 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base, align 4
  %add.ptr.i63 = getelementptr i8, ptr %20, i32 20
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i63) #9, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !89
  %22 = and i32 %21, 1073707807
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %24 = or i32 %18, %23
  %or.i65 = xor i32 %24, 1073741824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !90
  tail call void @arm_heavy_mb() #9
  %25 = tail call i32 @llvm.bswap.i32(i32 %or.i65) #9
  %26 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base, align 4
  %add.ptr4.i66 = getelementptr i8, ptr %27, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i66, i32 %25) #9, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %and36 = and i32 %ifl, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  %conv39 = select i1 %tobool37.not, i8 -99, i8 -127
  %ucode = getelementptr inbounds %struct.rp2_uart_port, ptr %up, i32 0, i32 6
  %28 = ptrtoint ptr %ucode to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ucode, align 4
  %add.ptr40 = getelementptr i8, ptr %29, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr40, i8 %conv39) #9, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !101
  tail call void @arm_heavy_mb() #9
  %and43 = and i32 %ifl, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  %conv46 = select i1 %tobool44.not, i8 -115, i8 -127
  %30 = ptrtoint ptr %ucode to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ucode, align 4
  %add.ptr48 = getelementptr i8, ptr %31, i32 12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr48, i8 %conv46) #9, !srcloc !93
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_update_timeout(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_remove_one_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rp2_asic_interrupt(ptr nocapture noundef readonly %card, i32 noundef %asic_id) unnamed_addr #2 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bar1 = getelementptr inbounds %struct.rp2_card, ptr %card, i32 0, i32 7
  %0 = ptrtoint ptr %bar1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bar1, align 4
  %shl = shl i32 %asic_id, 12
  %add.ptr = getelementptr i8, ptr %1, i32 %shl
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #9
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 3076
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #9, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !102
  %add.ptr5 = getelementptr i8, ptr %add.ptr, i32 3080
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #9, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  %4 = xor i32 %3, -1
  %5 = and i32 %2, %4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %7 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %status, align 4
  %call9 = call i32 @_find_next_bit_be(ptr noundef nonnull %status, i32 noundef 16, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call9)
  %cmp16 = icmp slt i32 %call9, 16
  br i1 %cmp16, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %ports = getelementptr inbounds %struct.rp2_card, ptr %card, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %rp2_ch_interrupt.exit.for.body_crit_edge, %for.body.lr.ph
  %ch.018 = phi i32 [ %call9, %for.body.lr.ph ], [ %call10, %rp2_ch_interrupt.exit.for.body_crit_edge ]
  %handled.017 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %rp2_ch_interrupt.exit.for.body_crit_edge ]
  %8 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ports, align 4
  %arrayidx = getelementptr %struct.rp2_uart_port, ptr %9, i32 %ch.018
  call void @_raw_spin_lock(ptr noundef %arrayidx) #9
  %base.i = getelementptr %struct.rp2_uart_port, ptr %9, i32 %ch.018, i32 5
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 16
  %12 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !84
  %13 = call i32 @llvm.bswap.i32(i32 %12) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !104
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !105
  call void @arm_heavy_mb() #9
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %15, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %12) #9, !srcloc !71
  %and.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.if.end.i_crit_edge, label %if.then.i

for.body.if.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %for.body
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 12
  %18 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #9, !srcloc !75
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !106
  %state.i.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 30
  %19 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %cmp.not67.i.i = icmp eq i16 %18, 0
  br i1 %cmp.not67.i.i, label %if.then.i.rp2_rx_chars.exit.i_crit_edge, label %for.body.lr.ph.i.i

if.then.i.rp2_rx_chars.exit.i_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rp2_rx_chars.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.then.i
  %21 = call i16 @llvm.bswap.i16(i16 %18) #9
  %sysrq.i.i.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 46
  %rx.i.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 31, i32 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end42.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %bytes.068.i.i = phi i16 [ %21, %for.body.lr.ph.i.i ], [ %dec.i.i, %if.end42.i.i.for.body.i.i_crit_edge ]
  %22 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i, align 4
  %add.ptr8.i.i = getelementptr i8, ptr %23, i32 8
  %24 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr8.i.i) #9, !srcloc !75
  %25 = call i16 @llvm.bswap.i16(i16 %24) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  %conv12.i.i = zext i16 %25 to i32
  %or.i.i = or i32 %conv12.i.i, 65536
  %and14.i.i = and i32 %conv12.i.i, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i.i)
  %tobool.not.i.i = icmp eq i32 %and14.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.else.i.i, !prof !108

if.then.i.i:                                      ; preds = %for.body.i.i
  %26 = and i16 %25, 255
  %conv19.i.i = zext i16 %26 to i32
  %27 = ptrtoint ptr %sysrq.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sysrq.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i.i.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.if.then22.i.i_crit_edge, label %if.end.i.i.i

if.then.i.i.if.then22.i.i_crit_edge:              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then22.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool1.not.i.i.i = icmp eq i16 %26, 0
  br i1 %tobool1.not.i.i.i, label %if.end.i.i.i.uart_handle_sysrq_char.exit.thread64.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end.i.i.i.uart_handle_sysrq_char.exit.thread64.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %uart_handle_sysrq_char.exit.thread64.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %29 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i.i = sub i32 %29, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %cmp.i.i.i = icmp slt i32 %sub.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then3.i.i.i, label %land.lhs.true.i.i.i.uart_handle_sysrq_char.exit.thread64.i.i_crit_edge

land.lhs.true.i.i.i.uart_handle_sysrq_char.exit.thread64.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %uart_handle_sysrq_char.exit.thread64.i.i

if.then3.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %call.i.i.i = call i32 @sysrq_mask() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end7.i.i.i, label %uart_handle_sysrq_char.exit.i.i

if.end7.i.i.i:                                    ; preds = %if.then3.i.i.i
  %call8.i.i.i = call zeroext i1 @uart_try_toggle_sysrq(ptr noundef %arrayidx, i32 noundef %conv19.i.i) #9
  br i1 %call8.i.i.i, label %if.end7.i.i.i.if.end42.i.i_crit_edge, label %if.end7.i.i.i.uart_handle_sysrq_char.exit.thread64.i.i_crit_edge

if.end7.i.i.i.uart_handle_sysrq_char.exit.thread64.i.i_crit_edge: ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %uart_handle_sysrq_char.exit.thread64.i.i

if.end7.i.i.i.if.end42.i.i_crit_edge:             ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42.i.i

uart_handle_sysrq_char.exit.thread64.i.i:         ; preds = %if.end7.i.i.i.uart_handle_sysrq_char.exit.thread64.i.i_crit_edge, %land.lhs.true.i.i.i.uart_handle_sysrq_char.exit.thread64.i.i_crit_edge, %if.end.i.i.i.uart_handle_sysrq_char.exit.thread64.i.i_crit_edge
  %30 = ptrtoint ptr %sysrq.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %sysrq.i.i.i, align 4
  br label %if.then22.i.i

uart_handle_sysrq_char.exit.i.i:                  ; preds = %if.then3.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @handle_sysrq(i32 noundef %conv19.i.i) #9
  %31 = ptrtoint ptr %sysrq.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %sysrq.i.i.i, align 4
  br label %if.end42.i.i

if.then22.i.i:                                    ; preds = %uart_handle_sysrq_char.exit.thread64.i.i, %if.then.i.i.if.then22.i.i_crit_edge
  call void @uart_insert_char(ptr noundef %arrayidx, i32 noundef %or.i.i, i32 noundef 0, i32 noundef %conv19.i.i, i32 noundef 0) #9
  br label %if.end42.i.i

if.else.i.i:                                      ; preds = %for.body.i.i
  %and25.i.i = and i32 %conv12.i.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i)
  %tobool26.not.i.i = icmp eq i32 %and25.i.i, 0
  br i1 %tobool26.not.i.i, label %if.else28.i.i, label %if.else.i.i.if.end38.i.i_crit_edge

if.else.i.i.if.end38.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38.i.i

if.else28.i.i:                                    ; preds = %if.else.i.i
  %and29.i.i = and i32 %conv12.i.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i.i)
  %tobool30.not.i.i = icmp eq i32 %and29.i.i, 0
  br i1 %tobool30.not.i.i, label %if.else32.i.i, label %if.else28.i.i.if.end38.i.i_crit_edge

if.else28.i.i.if.end38.i.i_crit_edge:             ; preds = %if.else28.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38.i.i

if.else32.i.i:                                    ; preds = %if.else28.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %and33.i.i = and i32 %conv12.i.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i.i)
  %tobool34.not.i.i = icmp eq i32 %and33.i.i, 0
  %spec.select.i.i = select i1 %tobool34.not.i.i, i32 0, i32 3
  br label %if.end38.i.i

if.end38.i.i:                                     ; preds = %if.else32.i.i, %if.else28.i.i.if.end38.i.i_crit_edge, %if.else.i.i.if.end38.i.i_crit_edge
  %flag.0.i.i = phi i32 [ 1, %if.else.i.i.if.end38.i.i_crit_edge ], [ 2, %if.else28.i.i.if.end38.i.i_crit_edge ], [ %spec.select.i.i, %if.else32.i.i ]
  %conv13.mask.i.i = and i16 %25, 255
  %conv40.i.i = zext i16 %conv13.mask.i.i to i32
  call void @uart_insert_char(ptr noundef %arrayidx, i32 noundef %or.i.i, i32 noundef 512, i32 noundef %conv40.i.i, i32 noundef %flag.0.i.i) #9
  br label %if.end42.i.i

if.end42.i.i:                                     ; preds = %if.end38.i.i, %if.then22.i.i, %uart_handle_sysrq_char.exit.i.i, %if.end7.i.i.i.if.end42.i.i_crit_edge
  %32 = ptrtoint ptr %rx.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rx.i.i, align 4
  %inc.i.i = add i32 %33, 1
  store i32 %inc.i.i, ptr %rx.i.i, align 4
  %dec.i.i = add i16 %bytes.068.i.i, -1
  %cmp.not.i.i = icmp eq i16 %dec.i.i, 0
  br i1 %cmp.not.i.i, label %if.end42.i.i.rp2_rx_chars.exit.i_crit_edge, label %if.end42.i.i.for.body.i.i_crit_edge

if.end42.i.i.for.body.i.i_crit_edge:              ; preds = %if.end42.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

if.end42.i.i.rp2_rx_chars.exit.i_crit_edge:       ; preds = %if.end42.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rp2_rx_chars.exit.i

rp2_rx_chars.exit.i:                              ; preds = %if.end42.i.i.rp2_rx_chars.exit.i_crit_edge, %if.then.i.rp2_rx_chars.exit.i_crit_edge
  call void @tty_flip_buffer_push(ptr noundef %20) #9
  br label %if.end.i

if.end.i:                                         ; preds = %rp2_rx_chars.exit.i, %for.body.if.end.i_crit_edge
  %and4.i = and i32 %13, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.end.i.if.end7.i_crit_edge, label %if.then6.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i

if.then6.i:                                       ; preds = %if.end.i
  %34 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i, align 4
  %add.ptr.i26.i = getelementptr i8, ptr %35, i32 14
  %36 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i26.i) #9, !srcloc !75
  %37 = call i16 @llvm.bswap.i16(i16 %36) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  %sub.i.i = sub i16 512, %37
  %state.i27.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 30
  %38 = ptrtoint ptr %state.i27.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %state.i27.i, align 4
  %xmit3.i.i = getelementptr inbounds %struct.uart_state, ptr %39, i32 0, i32 2
  %tty2.i.i.i = getelementptr inbounds %struct.tty_port, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %tty2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tty2.i.i.i, align 4
  %tobool.not.i.i28.i = icmp eq ptr %41, null
  br i1 %tobool.not.i.i28.i, label %if.then6.i.uart_tx_stopped.exit.i.i_crit_edge, label %land.lhs.true.i.i29.i

if.then6.i.uart_tx_stopped.exit.i.i_crit_edge:    ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %uart_tx_stopped.exit.i.i

land.lhs.true.i.i29.i:                            ; preds = %if.then6.i
  %stopped.i.i.i = getelementptr inbounds %struct.tty_struct, ptr %41, i32 0, i32 19, i32 1
  %42 = ptrtoint ptr %stopped.i.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %stopped.i.i.i, align 4, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool3.not.i.i.i = icmp eq i8 %43, 0
  br i1 %tobool3.not.i.i.i, label %land.lhs.true.i.i29.i.uart_tx_stopped.exit.i.i_crit_edge, label %land.lhs.true.i.i29.i.if.then.i31.i_crit_edge

land.lhs.true.i.i29.i.if.then.i31.i_crit_edge:    ; preds = %land.lhs.true.i.i29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i31.i

land.lhs.true.i.i29.i.uart_tx_stopped.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %uart_tx_stopped.exit.i.i

uart_tx_stopped.exit.i.i:                         ; preds = %land.lhs.true.i.i29.i.uart_tx_stopped.exit.i.i_crit_edge, %if.then6.i.uart_tx_stopped.exit.i.i_crit_edge
  %hw_stopped.i.i.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 35
  %44 = ptrtoint ptr %hw_stopped.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %hw_stopped.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool4.not.i.not.i.i = icmp eq i32 %45, 0
  br i1 %tobool4.not.i.not.i.i, label %for.cond.preheader.i.i, label %uart_tx_stopped.exit.i.i.if.then.i31.i_crit_edge

uart_tx_stopped.exit.i.i.if.then.i31.i_crit_edge: ; preds = %uart_tx_stopped.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i31.i

for.cond.preheader.i.i:                           ; preds = %uart_tx_stopped.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %36)
  %cmp.not72.i.i = icmp eq i16 %36, 2
  br i1 %cmp.not72.i.i, label %for.cond.preheader.i.i.for.end.i.i_crit_edge, label %for.body.lr.ph.i30.i

for.cond.preheader.i.i.for.end.i.i_crit_edge:     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.body.lr.ph.i30.i:                             ; preds = %for.cond.preheader.i.i
  %x_char.i.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 24
  %tx.i.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 31, i32 5
  %head.i.i = getelementptr inbounds %struct.uart_state, ptr %39, i32 0, i32 2, i32 1
  %tail.i.i = getelementptr inbounds %struct.uart_state, ptr %39, i32 0, i32 2, i32 2
  br label %for.body.i32.i

if.then.i31.i:                                    ; preds = %uart_tx_stopped.exit.i.i.if.then.i31.i_crit_edge, %land.lhs.true.i.i29.i.if.then.i31.i_crit_edge
  %46 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %47, i32 20
  %48 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i.i) #9, !srcloc !84
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !89
  %49 = and i32 %48, -2049
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !90
  call void @arm_heavy_mb() #9
  %50 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base.i, align 4
  %add.ptr4.i.i.i.i.i = getelementptr i8, ptr %51, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i.i.i.i, i32 %49) #9, !srcloc !71
  br label %if.end7.i

for.body.i32.i:                                   ; preds = %for.inc.i.i.for.body.i32.i_crit_edge, %for.body.lr.ph.i30.i
  %max_tx.073.i.i = phi i16 [ %sub.i.i, %for.body.lr.ph.i30.i ], [ %dec.i34.i, %for.inc.i.i.for.body.i32.i_crit_edge ]
  %52 = ptrtoint ptr %x_char.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %x_char.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool10.not.i.i = icmp eq i8 %53, 0
  br i1 %tobool10.not.i.i, label %if.end19.i.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %for.body.i32.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !111
  call void @arm_heavy_mb() #9
  %54 = ptrtoint ptr %x_char.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %x_char.i.i, align 4
  %56 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %base.i, align 4
  %add.ptr15.i.i = getelementptr i8, ptr %57, i32 8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr15.i.i, i8 %55) #9, !srcloc !93
  %58 = ptrtoint ptr %x_char.i.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %x_char.i.i, align 4
  br label %for.inc.i.i

if.end19.i.i:                                     ; preds = %for.body.i32.i
  %59 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %head.i.i, align 4
  %61 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %tail.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %62)
  %cmp20.i.i = icmp eq i32 %60, %62
  br i1 %cmp20.i.i, label %if.then22.i33.i, label %do.body25.i.i

if.then22.i33.i:                                  ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %63 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i.i68.i.i = getelementptr i8, ptr %64, i32 20
  %65 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i68.i.i) #9, !srcloc !84
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !89
  %66 = and i32 %65, -2049
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !90
  call void @arm_heavy_mb() #9
  %67 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base.i, align 4
  %add.ptr4.i.i.i69.i.i = getelementptr i8, ptr %68, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i.i69.i.i, i32 %66) #9, !srcloc !71
  br label %for.end.i.i

do.body25.i.i:                                    ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  call void @arm_heavy_mb() #9
  %69 = ptrtoint ptr %xmit3.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %xmit3.i.i, align 4
  %71 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %tail.i.i, align 4
  %arrayidx.i.i = getelementptr i8, ptr %70, i32 %72
  %73 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx.i.i, align 1
  %75 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %base.i, align 4
  %add.ptr30.i.i = getelementptr i8, ptr %76, i32 8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr30.i.i, i8 %74) #9, !srcloc !93
  %77 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %tail.i.i, align 4
  %add.i.i = add i32 %78, 1
  %and.i.i = and i32 %add.i.i, 4095
  store i32 %and.i.i, ptr %tail.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %do.body25.i.i, %do.body.i.i
  %79 = ptrtoint ptr %tx.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %storemerge.in.i.i = load i32, ptr %tx.i.i, align 4
  %storemerge.i.i = add i32 %storemerge.in.i.i, 1
  store i32 %storemerge.i.i, ptr %tx.i.i, align 4
  %dec.i34.i = add i16 %max_tx.073.i.i, -1
  %cmp.not.i35.i = icmp eq i16 %dec.i34.i, 0
  br i1 %cmp.not.i35.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body.i32.i_crit_edge

for.inc.i.i.for.body.i32.i_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i32.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %if.then22.i33.i, %for.cond.preheader.i.i.for.end.i.i_crit_edge
  %head37.i.i = getelementptr inbounds %struct.uart_state, ptr %39, i32 0, i32 2, i32 1
  %80 = ptrtoint ptr %head37.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %head37.i.i, align 4
  %tail38.i.i = getelementptr inbounds %struct.uart_state, ptr %39, i32 0, i32 2, i32 2
  %82 = ptrtoint ptr %tail38.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %tail38.i.i, align 4
  %sub39.i.i = sub i32 %81, %83
  %and40.i.i = and i32 %sub39.i.i, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.i.i)
  %cmp41.i.i = icmp eq i32 %and40.i.i, 0
  br i1 %cmp41.i.i, label %if.then43.i.i, label %for.end.i.i.if.end7.i_crit_edge

for.end.i.i.if.end7.i_crit_edge:                  ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i

if.then43.i.i:                                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @uart_write_wakeup(ptr noundef %arrayidx) #9
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then43.i.i, %for.end.i.i.if.end7.i_crit_edge, %if.then.i31.i, %if.end.i.if.end7.i_crit_edge
  %and8.i = and i32 %13, 4653056
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %if.end7.i.rp2_ch_interrupt.exit_crit_edge, label %if.then10.i

if.end7.i.rp2_ch_interrupt.exit_crit_edge:        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rp2_ch_interrupt.exit

if.then10.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  %state.i = getelementptr inbounds %struct.uart_port, ptr %arrayidx, i32 0, i32 30
  %84 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %state.i, align 4
  %delta_msr_wait.i = getelementptr inbounds %struct.tty_port, ptr %85, i32 0, i32 9
  call void @__wake_up(ptr noundef %delta_msr_wait.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  br label %rp2_ch_interrupt.exit

rp2_ch_interrupt.exit:                            ; preds = %if.then10.i, %if.end7.i.rp2_ch_interrupt.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %arrayidx) #9
  %inc = add i32 %handled.017, 1
  %add = add i32 %ch.018, 1
  %call10 = call i32 @_find_next_bit_be(ptr noundef nonnull %status, i32 noundef 16, i32 noundef %add) #9
  %cmp = icmp slt i32 %call10, 16
  br i1 %cmp, label %rp2_ch_interrupt.exit.for.body_crit_edge, label %rp2_ch_interrupt.exit.for.end_crit_edge

rp2_ch_interrupt.exit.for.end_crit_edge:          ; preds = %rp2_ch_interrupt.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

rp2_ch_interrupt.exit.for.body_crit_edge:         ; preds = %rp2_ch_interrupt.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %rp2_ch_interrupt.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %handled.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %inc, %rp2_ch_interrupt.exit.for.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #9
  ret i32 %handled.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_insert_char(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysrq_mask() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_sysrq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @uart_try_toggle_sysrq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_write_wakeup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !35, !37, !39, !40, !41, !43, !44, !46, !48, !49, !50, !51, !53, !55, !57}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = !{ptr @__initcall__kmod_rp2__238_858_rp2_uart_init6, !1, !"__initcall__kmod_rp2__238_858_rp2_uart_init6", i1 false, i1 false}
!1 = !{!"../drivers/tty/serial/rp2.c", i32 858, i32 1}
!2 = !{ptr @__exitcall_rp2_uart_exit, !3, !"__exitcall_rp2_uart_exit", i1 false, i1 false}
!3 = !{!"../drivers/tty/serial/rp2.c", i32 859, i32 1}
!4 = !{ptr @__UNIQUE_ID_description239, !5, !"__UNIQUE_ID_description239", i1 false, i1 false}
!5 = !{!"../drivers/tty/serial/rp2.c", i32 861, i32 1}
!6 = !{ptr @__UNIQUE_ID_author240, !7, !"__UNIQUE_ID_author240", i1 false, i1 false}
!7 = !{!"../drivers/tty/serial/rp2.c", i32 862, i32 1}
!8 = !{ptr @__UNIQUE_ID_file241, !9, !"__UNIQUE_ID_file241", i1 false, i1 false}
!9 = !{!"../drivers/tty/serial/rp2.c", i32 863, i32 1}
!10 = !{ptr @__UNIQUE_ID_license242, !9, !"__UNIQUE_ID_license242", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_firmware243, !12, !"__UNIQUE_ID_firmware243", i1 false, i1 false}
!12 = !{!"../drivers/tty/serial/rp2.c", i32 864, i32 1}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/tty/serial/rp2.c", i32 829, i32 11}
!15 = !{ptr @rp2_pci_driver, !16, !"rp2_pci_driver", i1 false, i1 false}
!16 = !{!"../drivers/tty/serial/rp2.c", i32 828, i32 26}
!17 = !{ptr @rp2_pci_tbl, !18, !"rp2_pci_tbl", i1 false, i1 false}
!18 = !{!"../drivers/tty/serial/rp2.c", i32 790, i32 35}
!19 = !{ptr @rp2_probe.__key, !20, !"__key", i1 false, i1 false}
!20 = !{!"../drivers/tty/serial/rp2.c", i32 729, i32 2}
!21 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/tty/serial/rp2.c", i32 745, i32 2}
!24 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @rp2_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @rp2_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/tty/serial/rp2.c", i32 749, i32 3}
!32 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @rp2_probe._entry.7, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @rp2_probe._entry_ptr.10, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/tty/serial/rp2.c", i32 762, i32 29}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/tty/serial/rp2.c", i32 764, i32 3}
!39 = !{ptr @rp2_probe._entry.12, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @rp2_probe._entry_ptr.14, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/tty/serial/rp2.c", i32 210, i32 8}
!43 = !{ptr @rp2_minor_lock, !42, !"rp2_minor_lock", i1 false, i1 false}
!44 = !{ptr @rp2_minor_next, !45, !"rp2_minor_next", i1 false, i1 false}
!45 = !{!"../drivers/tty/serial/rp2.c", i32 211, i32 12}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/tty/serial/rp2.c", i32 705, i32 4}
!48 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @rp2_load_firmware._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @rp2_load_firmware._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @rp2_uart_ops, !52, !"rp2_uart_ops", i1 false, i1 false}
!52 = !{!"../drivers/tty/serial/rp2.c", i32 576, i32 30}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/tty/serial/rp2.c", i32 547, i32 36}
!55 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/tty/serial/rp2.c", i32 172, i32 16}
!57 = !{ptr @rp2_uart_driver, !58, !"rp2_uart_driver", i1 false, i1 false}
!58 = !{!"../drivers/tty/serial/rp2.c", i32 169, i32 27}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 1, !"min_enum_size", i32 4}
!61 = !{i32 8, !"branch-target-enforcement", i32 0}
!62 = !{i32 8, !"sign-return-address", i32 0}
!63 = !{i32 8, !"sign-return-address-all", i32 0}
!64 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!65 = !{i32 7, !"uwtable", i32 1}
!66 = !{i32 7, !"frame-pointer", i32 2}
!67 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!68 = !{!"auto-init"}
!69 = !{!"branch_weights", i32 1, i32 2000}
!70 = !{i64 2154734790}
!71 = !{i64 4197978}
!72 = !{i64 2154735179}
!73 = !{i64 2154731348}
!74 = !{i64 4197358}
!75 = !{i64 4197558}
!76 = !{i64 2154731984}
!77 = !{i64 2154732197}
!78 = !{i64 2154732833}
!79 = !{i64 2154733202}
!80 = !{i64 2154733736}
!81 = !{i64 2154734326}
!82 = !{i64 2154735679}
!83 = !{i64 2154736252}
!84 = !{i64 4198396}
!85 = !{i64 2154736986}
!86 = !{i64 2154737739}
!87 = !{i64 2154738124}
!88 = !{i64 2154738780}
!89 = !{i64 2154714149}
!90 = !{i64 2154714360}
!91 = !{i64 2154729532}
!92 = !{i64 2154741159}
!93 = !{i64 4197781}
!94 = !{i64 2154741500}
!95 = !{i64 2154716843}
!96 = !{i64 2154717336}
!97 = !{i64 2154715412}
!98 = !{i64 2154715801}
!99 = !{i64 2154719339}
!100 = !{i64 2154721274}
!101 = !{i64 2154721616}
!102 = !{i64 2154727949}
!103 = !{i64 2154728421}
!104 = !{i64 2154726087}
!105 = !{i64 2154726309}
!106 = !{i64 2154722629}
!107 = !{i64 2154723117}
!108 = !{!"branch_weights", i32 2000, i32 1}
!109 = !{i64 2154724666}
!110 = !{i8 0, i8 2}
!111 = !{i64 2154724897}
!112 = !{i64 2154725239}
