; ModuleID = '/llk/IR_all_yes/drivers/tty/serial/icom.c_pt.bc'
source_filename = "../drivers/tty/serial/icom.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.uart_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lookup_int_table = type { ptr, i32 }
%struct.lookup_proc_table = type { ptr, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.70, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.icom_adapter = type { ptr, i32, ptr, [4 x %struct.icom_port], i32, i32, i32, i32, %struct.list_head, %struct.kref }
%struct.icom_port = type { %struct.uart_port, i8, i8, i8, i8, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, i32, i32, i32, ptr }
%struct.uart_port = type { %struct.spinlock, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, ptr, %struct.uart_icount, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.serial_rs485, ptr, %struct.serial_iso7816, ptr }
%struct.uart_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.serial_rs485 = type { i32, i32, i32, [5 x i32] }
%struct.serial_iso7816 = type { i32, i32, i32, i32, i32, [5 x i32] }
%struct.xmit_status_area = type { i32, i32, i32, i16, i16, i16, i16 }
%struct.statusArea = type { [1 x %struct.xmit_status_area], [2 x %struct.anon.75] }
%struct.anon.75 = type { i32, i32, i32, i16, i16, i16, i16 }
%struct.func_dram = type { [108 x i32], i32, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i8, i8, i8, i8, [20 x i8], i8, i8, i8, i8, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32 }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.37, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.37 = type { ptr }
%struct.llist_head = type { ptr }
%struct.uart_state = type { %struct.tty_port, i32, %struct.circ_buf, %struct.atomic_t, %struct.wait_queue_head, ptr }
%struct.circ_buf = type { ptr, i32, i32 }
%struct.firmware = type { i32, ptr, ptr }
%struct.icom_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }

@icom_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @icom_pci_table, ptr @icom_probe, ptr @icom_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@icom_uart_driver = internal global { %struct.uart_driver, [60 x i8] } { %struct.uart_driver { ptr null, ptr @.str, ptr @.str.121, i32 243, i32 0, i32 128, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__initcall__kmod_icom__240_1635_icom_init6 = internal global ptr @icom_init, section ".initcall6.init", align 4
@__exitcall_icom_exit = internal global ptr @icom_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author241 = internal constant [51 x i8] c"icom.author=Michael Anderson <mjanders@us.ibm.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description242 = internal constant [47 x i8] c"icom.description=IBM iSeries Serial IOA driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file243 = internal constant [34 x i8] c"icom.file=drivers/tty/serial/icom\00", section ".modinfo", align 1
@__UNIQUE_ID_license244 = internal constant [17 x i8] c"icom.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware245 = internal constant [34 x i8] c"icom.firmware=icom_call_setup.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware246 = internal constant [31 x i8] c"icom.firmware=icom_res_dce.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware247 = internal constant [27 x i8] c"icom.firmware=icom_asc.bin\00", section ".modinfo", align 1
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"icom\00", [27 x i8] zeroinitializer }, align 32
@icom_pci_table = internal constant { [6 x %struct.pci_device_id], [32 x i8] } { [6 x %struct.pci_device_id] [%struct.pci_device_id { i32 4116, i32 49, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4116, i32 537, i32 4116, i32 538, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4116, i32 537, i32 4116, i32 593, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4116, i32 537, i32 4116, i32 594, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4116, i32 537, i32 4116, i32 865, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@icom_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1488, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Device enable FAILED\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"icom_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/tty/serial/icom.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@icom_probe._entry_ptr = internal global ptr @icom_probe._entry, section ".printk_index", align 4
@icom_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1494, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"pci_request_regions FAILED\0A\00", [36 x i8] zeroinitializer }, align 32
@icom_probe._entry_ptr.8 = internal global ptr @icom_probe._entry.6, section ".printk_index", align 4
@icom_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 1503, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"PCI Config read FAILED\0A\00", [40 x i8] zeroinitializer }, align 32
@icom_probe._entry_ptr.11 = internal global ptr @icom_probe._entry.9, section ".printk_index", align 4
@icom_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 1521, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"icom_alloc_adapter FAILED\0A\00", [37 x i8] zeroinitializer }, align 32
@icom_probe._entry_ptr.14 = internal global ptr @icom_probe._entry.12, section ".printk_index", align 4
@icom_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 1534, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Port configuration failed\0A\00", [37 x i8] zeroinitializer }, align 32
@icom_probe._entry_ptr.17 = internal global ptr @icom_probe._entry.15, section ".printk_index", align 4
@icom_ops = internal constant { %struct.uart_ops, [56 x i8] } { %struct.uart_ops { ptr @icom_tx_empty, ptr @icom_set_mctrl, ptr @icom_get_mctrl, ptr @icom_stop_tx, ptr @icom_start_tx, ptr null, ptr null, ptr @icom_send_xchar, ptr @icom_stop_rx, ptr null, ptr @icom_break, ptr @icom_open, ptr @icom_close, ptr null, ptr @icom_set_termios, ptr null, ptr null, ptr @icom_type, ptr @icom_release_port, ptr @icom_request_port, ptr @icom_config_port, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@icom_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 1568, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Device add failed\0A\00", [45 x i8] zeroinitializer }, align 32
@icom_probe._entry_ptr.20 = internal global ptr @icom_probe._entry.18, section ".printk_index", align 4
@icom_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 1570, ptr @.str.23, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Device added\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@icom_probe._entry_ptr.24 = internal global ptr @icom_probe._entry.21, section ".printk_index", align 4
@icom_adapter_head = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @icom_adapter_head, ptr @icom_adapter_head }, [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@check_modem_status.old_status = internal global { i8, [31 x i8] } zeroinitializer, align 32
@icom_load_ports._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.3, i32 1391, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Memory allocation for port FAILED\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"icom_load_ports\00", [16 x i8] zeroinitializer }, align 32
@icom_load_ports._entry_ptr = internal global ptr @icom_load_ports._entry, section ".printk_index", align 4
@get_port_memory._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.3, i32 175, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Can not allocate Transmit buffer\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"get_port_memory\00", [16 x i8] zeroinitializer }, align 32
@get_port_memory._entry_ptr = internal global ptr @get_port_memory._entry, section ".printk_index", align 4
@get_port_memory._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.42, ptr @.str.3, i32 186, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Can not allocate Receive buffer\0A\00", [63 x i8] zeroinitializer }, align 32
@get_port_memory._entry_ptr.46 = internal global ptr @get_port_memory._entry.44, section ".printk_index", align 4
@get_port_memory._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.42, ptr @.str.3, i32 197, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Can not allocate Status buffer\0A\00", [32 x i8] zeroinitializer }, align 32
@get_port_memory._entry_ptr.49 = internal global ptr @get_port_memory._entry.47, section ".printk_index", align 4
@get_port_memory._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.42, ptr @.str.3, i32 209, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Can not allocate xmit Restart buffer\0A\00", [58 x i8] zeroinitializer }, align 32
@get_port_memory._entry_ptr.52 = internal global ptr @get_port_memory._entry.50, section ".printk_index", align 4
@startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.3, i32 516, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Unusable Port, port configuration missing\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"startup\00", [24 x i8] zeroinitializer }, align 32
@startup._entry_ptr = internal global ptr @startup._entry, section ".printk_index", align 4
@icom_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.109, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@startup._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.72, ptr @.str.3, i32 551, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Invalid port assignment\0A\00", [39 x i8] zeroinitializer }, align 32
@startup._entry_ptr.76 = internal global ptr @startup._entry.74, section ".printk_index", align 4
@int_mask_tbl = internal global { [4 x %struct.lookup_int_table], [32 x i8] } { [4 x %struct.lookup_int_table] [%struct.lookup_int_table { ptr null, i32 16383 }, %struct.lookup_int_table { ptr null, i32 1073676288 }, %struct.lookup_int_table { ptr null, i32 16383 }, %struct.lookup_int_table { ptr null, i32 1073676288 }], [32 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"icom_call_setup.bin\00", [44 x i8] zeroinitializer }, align 32
@load_code._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.3, i32 365, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Unable to load icom_call_setup.bin firmware image\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"load_code\00", [22 x i8] zeroinitializer }, align 32
@load_code._entry_ptr = internal global ptr @load_code._entry, section ".printk_index", align 4
@load_code._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.80, ptr @.str.3, i32 371, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Invalid firmware image for icom_call_setup.bin found.\0A\00", [41 x i8] zeroinitializer }, align 32
@load_code._entry_ptr.83 = internal global ptr @load_code._entry.81, section ".printk_index", align 4
@.str.84 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"icom_res_dce.bin\00", [47 x i8] zeroinitializer }, align 32
@load_code._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.80, ptr @.str.3, i32 385, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Unable to load icom_res_dce.bin firmware image\0A\00", [48 x i8] zeroinitializer }, align 32
@load_code._entry_ptr.87 = internal global ptr @load_code._entry.85, section ".printk_index", align 4
@load_code._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.80, ptr @.str.3, i32 391, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Invalid firmware image for icom_res_dce.bin found.\0A\00", [44 x i8] zeroinitializer }, align 32
@load_code._entry_ptr.90 = internal global ptr @load_code._entry.88, section ".printk_index", align 4
@load_code._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.80, ptr @.str.3, i32 424, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Can not allocate DMA buffer\0A\00", [35 x i8] zeroinitializer }, align 32
@load_code._entry_ptr.93 = internal global ptr @load_code._entry.91, section ".printk_index", align 4
@.str.94 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"icom_asc.bin\00", [19 x i8] zeroinitializer }, align 32
@load_code._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.80, ptr @.str.3, i32 430, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Unable to load icom_asc.bin firmware image\0A\00", [52 x i8] zeroinitializer }, align 32
@load_code._entry_ptr.97 = internal global ptr @load_code._entry.95, section ".printk_index", align 4
@load_code._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.80, ptr @.str.3, i32 436, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Invalid firmware image for icom_asc.bin found.\0A\00", [48 x i8] zeroinitializer }, align 32
@load_code._entry_ptr.100 = internal global ptr @load_code._entry.98, section ".printk_index", align 4
@load_code._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.80, ptr @.str.3, i32 481, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Invalid or no cable attached\0A\00", [34 x i8] zeroinitializer }, align 32
@load_code._entry_ptr.103 = internal global ptr @load_code._entry.101, section ".printk_index", align 4
@load_code._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.80, ptr @.str.3, i32 497, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Port not operational\0A\00", [42 x i8] zeroinitializer }, align 32
@load_code._entry_ptr.106 = internal global ptr @load_code._entry.104, section ".printk_index", align 4
@stop_processor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.107, ptr @.str.3, i32 289, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stop_processor\00", [17 x i8] zeroinitializer }, align 32
@stop_processor._entry_ptr = internal global ptr @stop_processor._entry, section ".printk_index", align 4
@stop_proc = internal global { [4 x %struct.lookup_proc_table], [32 x i8] } { [4 x %struct.lookup_proc_table] [%struct.lookup_proc_table { ptr null, i32 4 }, %struct.lookup_proc_table { ptr null, i32 1 }, %struct.lookup_proc_table { ptr null, i32 4 }, %struct.lookup_proc_table { ptr null, i32 1 }], [32 x i8] zeroinitializer }, align 32
@start_proc = internal global { [4 x %struct.lookup_proc_table], [32 x i8] } { [4 x %struct.lookup_proc_table] [%struct.lookup_proc_table { ptr null, i32 8 }, %struct.lookup_proc_table { ptr null, i32 2 }, %struct.lookup_proc_table { ptr null, i32 8 }, %struct.lookup_proc_table { ptr null, i32 2 }], [32 x i8] zeroinitializer }, align 32
@start_processor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.108, ptr @.str.3, i32 320, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"start_processor\00", [16 x i8] zeroinitializer }, align 32
@start_processor._entry_ptr = internal global ptr @start_processor._entry, section ".printk_index", align 4
@.str.109 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"icom_lock\00", [22 x i8] zeroinitializer }, align 32
@icom_remove_adapter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.111, ptr @.str.3, i32 1445, ptr @.str.23, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Device removed\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"icom_remove_adapter\00", [44 x i8] zeroinitializer }, align 32
@icom_remove_adapter._entry_ptr = internal global ptr @icom_remove_adapter._entry, section ".printk_index", align 4
@shutdown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.114, ptr @.str.3, i32 592, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"shutdown\00", [23 x i8] zeroinitializer }, align 32
@shutdown._entry_ptr = internal global ptr @shutdown._entry, section ".printk_index", align 4
@icom_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.120, ptr @.str.3, i32 1603, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unable to find device to remove\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"icom_remove\00", [20 x i8] zeroinitializer }, align 32
@icom_remove._entry_ptr = internal global ptr @icom_remove._entry, section ".printk_index", align 4
@.str.121 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ttyA\00", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 593, i64 594]
@__sancov_gen_cov_switch_values.122 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.123 = internal global [21 x i64] [i64 19, i64 32, i64 600, i64 900, i64 1200, i64 1800, i64 2400, i64 3600, i64 4800, i64 7200, i64 9600, i64 14400, i64 19200, i64 28800, i64 38400, i64 57600, i64 76800, i64 115200, i64 153600, i64 230400, i64 307200]
@___asan_gen_.124 = private unnamed_addr constant [16 x i8] c"icom_pci_driver\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 1606, i32 26 }
@___asan_gen_.127 = private unnamed_addr constant [17 x i8] c"icom_uart_driver\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 1295, i32 27 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 1607, i32 10 }
@___asan_gen_.133 = private unnamed_addr constant [15 x i8] c"icom_pci_table\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 54, i32 35 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 1488, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 1494, i32 4 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 1503, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 1521, i32 4 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 1534, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant [9 x i8] c"icom_ops\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 1275, i32 30 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 1568, i32 5 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 1570, i32 5 }
@___asan_gen_.196 = private unnamed_addr constant [18 x i8] c"icom_adapter_head\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 118, i32 8 }
@___asan_gen_.199 = private unnamed_addr constant [11 x i8] c"old_status\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 668, i32 14 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 1390, i32 5 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 175, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 186, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 197, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 208, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 515, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant [10 x i8] c"icom_lock\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 550, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant [13 x i8] c"int_mask_tbl\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 108, i32 32 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 364, i32 28 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 365, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 371, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 384, i32 28 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 385, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 391, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 424, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 429, i32 28 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 430, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 436, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 481, i32 3 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 497, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 288, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant [10 x i8] c"stop_proc\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 101, i32 33 }
@___asan_gen_.334 = private unnamed_addr constant [11 x i8] c"start_proc\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 93, i32 33 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 319, i32 3 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 121, i32 8 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 1444, i32 4 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 591, i32 3 }
@___asan_gen_.361 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 1603, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.371 = private constant [29 x i8] c"../drivers/tty/serial/icom.c\00", align 1
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 1298, i32 14 }
@llvm.compiler.used = appending global [121 x ptr] [ptr @__UNIQUE_ID_author241, ptr @__UNIQUE_ID_description242, ptr @__UNIQUE_ID_file243, ptr @__UNIQUE_ID_firmware245, ptr @__UNIQUE_ID_firmware246, ptr @__UNIQUE_ID_firmware247, ptr @__UNIQUE_ID_license244, ptr @__exitcall_icom_exit, ptr @__initcall__kmod_icom__240_1635_icom_init6, ptr @get_port_memory._entry, ptr @get_port_memory._entry.44, ptr @get_port_memory._entry.47, ptr @get_port_memory._entry.50, ptr @get_port_memory._entry_ptr, ptr @get_port_memory._entry_ptr.46, ptr @get_port_memory._entry_ptr.49, ptr @get_port_memory._entry_ptr.52, ptr @icom_exit, ptr @icom_load_ports._entry, ptr @icom_load_ports._entry_ptr, ptr @icom_probe._entry, ptr @icom_probe._entry.12, ptr @icom_probe._entry.15, ptr @icom_probe._entry.18, ptr @icom_probe._entry.21, ptr @icom_probe._entry.6, ptr @icom_probe._entry.9, ptr @icom_probe._entry_ptr, ptr @icom_probe._entry_ptr.11, ptr @icom_probe._entry_ptr.14, ptr @icom_probe._entry_ptr.17, ptr @icom_probe._entry_ptr.20, ptr @icom_probe._entry_ptr.24, ptr @icom_probe._entry_ptr.8, ptr @icom_remove._entry, ptr @icom_remove._entry_ptr, ptr @icom_remove_adapter._entry, ptr @icom_remove_adapter._entry_ptr, ptr @load_code._entry, ptr @load_code._entry.101, ptr @load_code._entry.104, ptr @load_code._entry.81, ptr @load_code._entry.85, ptr @load_code._entry.88, ptr @load_code._entry.91, ptr @load_code._entry.95, ptr @load_code._entry.98, ptr @load_code._entry_ptr, ptr @load_code._entry_ptr.100, ptr @load_code._entry_ptr.103, ptr @load_code._entry_ptr.106, ptr @load_code._entry_ptr.83, ptr @load_code._entry_ptr.87, ptr @load_code._entry_ptr.90, ptr @load_code._entry_ptr.93, ptr @load_code._entry_ptr.97, ptr @shutdown._entry, ptr @shutdown._entry_ptr, ptr @start_processor._entry, ptr @start_processor._entry_ptr, ptr @startup._entry, ptr @startup._entry.74, ptr @startup._entry_ptr, ptr @startup._entry_ptr.76, ptr @stop_processor._entry, ptr @stop_processor._entry_ptr, ptr @icom_pci_driver, ptr @icom_uart_driver, ptr @.str, ptr @icom_pci_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @icom_ops, ptr @.str.19, ptr @.str.22, ptr @.str.23, ptr @icom_adapter_head, ptr @check_modem_status.old_status, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.71, ptr @.str.72, ptr @icom_lock, ptr @.str.75, ptr @int_mask_tbl, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.82, ptr @.str.84, ptr @.str.86, ptr @.str.89, ptr @.str.92, ptr @.str.94, ptr @.str.96, ptr @.str.99, ptr @.str.102, ptr @.str.105, ptr @.str.107, ptr @stop_proc, ptr @start_proc, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.114, ptr @.str.119, ptr @.str.120, ptr @.str.121], section "llvm.metadata"
@0 = internal global [83 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icom_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icom_uart_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icom_pci_table to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icom_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icom_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icom_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icom_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icom_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icom_ops to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icom_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icom_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icom_adapter_head to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_modem_status.old_status to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icom_load_ports._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_port_memory._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_port_memory._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_port_memory._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_port_memory._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icom_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @startup._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @int_mask_tbl to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_code._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_code._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_code._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_code._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_code._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_code._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_code._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_code._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_code._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stop_processor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stop_proc to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_proc to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_processor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icom_remove_adapter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shutdown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icom_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @icom_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @pci_unregister_driver(ptr noundef nonnull @icom_pci_driver) #11
  tail call void @uart_unregister_driver(ptr noundef nonnull @icom_uart_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @icom_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @uart_register_driver(ptr noundef nonnull @icom_uart_driver) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @__pci_register_driver(ptr noundef nonnull @icom_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @uart_unregister_driver(ptr noundef nonnull @icom_uart_driver) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then2 ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @icom_probe(ptr noundef %dev, ptr nocapture noundef readonly %ent) #2 align 64 {
entry:
  %command_reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %command_reg) #11
  %0 = ptrtoint ptr %command_reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %command_reg, align 4, !annotation !264
  %call = tail call i32 @pci_enable_device(ptr noundef %dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.1) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @pci_request_regions(ptr noundef %dev, ptr noundef nonnull @.str) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end10, label %do.end8

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev9 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.7) #14
  tail call void @pci_disable_device(ptr noundef %dev) #11
  br label %cleanup

if.end10:                                         ; preds = %if.end
  tail call void @pci_set_master(ptr noundef %dev) #11
  %call11 = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef 4, ptr noundef nonnull %command_reg) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end18, label %do.end16

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %dev17 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17, ptr noundef nonnull @.str.10) #14
  br label %cleanup

if.end18:                                         ; preds = %if.end10
  %1 = ptrtoint ptr %command_reg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %command_reg, align 4
  %or21 = or i32 %2, 326
  %call22 = call i32 @pci_write_config_dword(ptr noundef %dev, i32 noundef 4, i32 noundef %or21) #11
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %ent, i32 0, i32 6
  %3 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  %call24 = call i32 @pci_write_config_dword(ptr noundef %dev, i32 noundef 68, i32 noundef -2097118454) #11
  br label %if.end27

if.else:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  %call25 = call i32 @pci_write_config_dword(ptr noundef %dev, i32 noundef 68, i32 noundef 1107313152) #11
  %call26 = call i32 @pci_write_config_dword(ptr noundef %dev, i32 noundef 72, i32 noundef 1107313152) #11
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.then23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 1768) #15
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %do.end33, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end27
  %tmp.018.i = load ptr, ptr @icom_adapter_head, align 4
  %cmp.i.not19.i = icmp eq ptr %tmp.018.i, @icom_adapter_head
  br i1 %cmp.i.not19.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i:                                       ; preds = %if.end5.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %tmp.021.i = phi ptr [ %tmp.0.i, %if.end5.i.for.body.i_crit_edge ], [ %tmp.018.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %adapter_count.020.i = phi i32 [ %inc.i, %if.end5.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %index.i = getelementptr i8, ptr %tmp.021.i, i32 -16
  %6 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %adapter_count.020.i)
  %cmp.not.i = icmp eq i32 %7, %adapter_count.020.i
  br i1 %cmp.not.i, label %if.end5.i, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

if.end5.i:                                        ; preds = %for.body.i
  %inc.i = add i32 %adapter_count.020.i, 1
  %8 = ptrtoint ptr %tmp.021.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %tmp.0.i = load ptr, ptr %tmp.021.i, align 4
  %cmp.i.not.i = icmp eq ptr %tmp.0.i, @icom_adapter_head
  br i1 %cmp.i.not.i, label %if.end5.i.for.end.i_crit_edge, label %if.end5.i.for.body.i_crit_edge

if.end5.i.for.body.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

if.end5.i.for.end.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %if.end5.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %adapter_count.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ %inc.i, %if.end5.i.for.end.i_crit_edge ], [ %adapter_count.020.i, %for.body.i.for.end.i_crit_edge ]
  %tmp.0.lcssa.i = phi ptr [ @icom_adapter_head, %for.cond.preheader.i.for.end.i_crit_edge ], [ @icom_adapter_head, %if.end5.i.for.end.i_crit_edge ], [ %tmp.021.i, %for.body.i.for.end.i_crit_edge ]
  %index6.i = getelementptr inbounds %struct.icom_adapter, ptr %call7.i.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %index6.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %adapter_count.0.lcssa.i, ptr %index6.i, align 4
  %icom_adapter_entry.i = getelementptr inbounds %struct.icom_adapter, ptr %call7.i.i.i, i32 0, i32 8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %tmp.0.lcssa.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %icom_adapter_entry.i, ptr noundef %11, ptr noundef %tmp.0.lcssa.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.end.i.if.end35_crit_edge

for.end.i.if.end35_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

if.end.i.i.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %icom_adapter_entry.i, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %icom_adapter_entry.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %tmp.0.lcssa.i, ptr %icom_adapter_entry.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.icom_adapter, ptr %call7.i.i.i, i32 0, i32 8, i32 1
  %14 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev3.i.i.i, align 8
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %icom_adapter_entry.i, ptr %11, align 4
  br label %if.end35

do.end33:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  %dev34 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev34, ptr noundef nonnull @.str.13) #14
  br label %probe_exit0

if.end35:                                         ; preds = %if.end.i.i.i, %for.end.i.if.end35_crit_edge
  %resource = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 47
  %16 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %resource, align 8
  %base_addr_pci = getelementptr inbounds %struct.icom_adapter, ptr %call7.i.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %base_addr_pci to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %base_addr_pci, align 4
  %pci_dev = getelementptr inbounds %struct.icom_adapter, ptr %call7.i.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %pci_dev to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %dev, ptr %pci_dev, align 8
  %20 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %driver_data, align 4
  %version = getelementptr inbounds %struct.icom_adapter, ptr %call7.i.i.i, i32 0, i32 5
  %22 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %version, align 8
  %subdevice = getelementptr inbounds %struct.pci_device_id, ptr %ent, i32 0, i32 3
  %23 = ptrtoint ptr %subdevice to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %subdevice, align 4
  %subsystem_id = getelementptr inbounds %struct.icom_adapter, ptr %call7.i.i.i, i32 0, i32 6
  %25 = ptrtoint ptr %subsystem_id to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %subsystem_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp.i = icmp eq i32 %21, 1
  %numb_ports.i = getelementptr inbounds %struct.icom_adapter, ptr %call7.i.i.i, i32 0, i32 7
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %numb_ports.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 2, ptr %numb_ports.i, align 8
  %port.i = getelementptr %struct.icom_adapter, ptr %call7.i.i.i, i32 0, i32 3, i32 0, i32 8
  %27 = ptrtoint ptr %port.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %port.i, align 4
  %status.i = getelementptr %struct.icom_adapter, ptr %call7.i.i.i, i32 0, i32 3, i32 0, i32 19
  %28 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %status.i, align 8
  %imbed_modem.i = getelementptr %struct.icom_adapter, ptr %call7.i.i.i, i32 0, i32 3, i32 0, i32 1
  %29 = ptrtoint ptr %imbed_modem.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %imbed_modem.i, align 4
  %port.1.i = getelementptr %struct.icom_adapter, ptr %call7.i.i.i, i32 0, i32 3, i32 1, i32 8
  %30 = ptrtoint ptr %port.1.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %port.1.i, align 4
  %status.1.i = getelementptr %struct.icom_adapter, ptr %call7.i.i.i, i32 0, i32 3, i32 1, i32 19
  %31 = ptrtoint ptr %status.1.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %status.1.i, align 8
  %imbed_modem.1.i = getelementptr %struct.icom_adapter, ptr %call7.i.i.i, i32 0, i32 3, i32 1, i32 1
  %32 = ptrtoint ptr %imbed_modem.1.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %imbed_modem.1.i, align 4
  br label %icom_init_ports.exit

if.else.i:                                        ; preds = %if.end35
  %33 = ptrtoint ptr %numb_ports.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 4, ptr %numb_ports.i, align 8
  %port11.i = getelementptr %struct.icom_adapter, ptr %call7.i.i.i, i32 0, i32 3, i32 0, i32 8
  %34 = ptrtoint ptr %port11.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %port11.i, align 4
  %status12.i = getelementptr %struct.icom_adapter, ptr %call7.i.i.i, i32 0, i32 3, i32 0, i32 19
  %35 = ptrtoint ptr %status12.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %status12.i, align 8
  %36 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values)
  switch i32 %24, label %if.else30.i [
    i32 594, label %if.then4.i
    i32 593, label %if.else.i.if.end.i_crit_edge
  ]

if.else.i.if.end.i_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %imbed_modem13.i = getelementptr %struct.icom_adapter, ptr %call7.i.i.i, i32 0, i32 3, i32 0, i32 1
  %37 = ptrtoint ptr %imbed_modem13.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 3, ptr %imbed_modem13.i, align 4
  %port11.1.i = getelementptr %struct.icom_adapter, ptr %call7.i.i.i, i32 0, i32 3, i32 1, i32 8
  %38 = ptrtoint ptr %port11.1.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %port11.1.i, align 4
  %status12.1.i = getelementptr %struct.icom_adapter, ptr %call7.i.i.i, i32 0, i32 3, i32 1, i32 19
  %39 = ptrtoint ptr %status12.1.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %status12.1.i, align 8
  %imbed_modem13.1.i = getelementptr %struct.icom_adapter, ptr %call7.i.i.i, i32 0, i32 3, i32 1, i32 1
  %40 = ptrtoint ptr %imbed_modem13.1.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 3, ptr %imbed_modem13.1.i, align 4
  %port11.2.i = getelementptr %struct.icom_adapter, ptr %call7.i.i.i, i32 0, i32 3, i32 2, i32 8
  %41 = ptrtoint ptr %port11.2.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 2, ptr %port11.2.i, align 4
  %status12.2.i = getelementptr %struct.icom_adapter, ptr %call7.i.i.i, i32 0, i32 3, i32 2, i32 19
  %42 = ptrtoint ptr %status12.2.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %status12.2.i, align 8
  %imbed_modem13.2.i = getelementptr %struct.icom_adapter, ptr %call7.i.i.i, i32 0, i32 3, i32 2, i32 1
  %43 = ptrtoint ptr %imbed_modem13.2.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 3, ptr %imbed_modem13.2.i, align 4
  %port11.3.i = getelementptr %struct.icom_adapter, ptr %call7.i.i.i, i32 0, i32 3, i32 3, i32 8
  %44 = ptrtoint ptr %port11.3.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 3, ptr %port11.3.i, align 4
  %status12.3.i = getelementptr %struct.icom_adapter, ptr %call7.i.i.i, i32 0, i32 3, i32 3, i32 19
  %45 = ptrtoint ptr %status12.3.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %status12.3.i, align 8
  %imbed_modem13.3.i = getelementptr %struct.icom_adapter, ptr %call7.i.i.i, i32 0, i32 3, i32 3, i32 1
  %46 = ptrtoint ptr %imbed_modem13.3.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 3, ptr %imbed_modem13.3.i, align 4
  br label %icom_init_ports.exit

if.else30.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end.i:                                         ; preds = %if.else30.i, %if.else.i.if.end.i_crit_edge
  %.sink.i = phi i8 [ 2, %if.else30.i ], [ 3, %if.else.i.if.end.i_crit_edge ]
  %47 = getelementptr inbounds %struct.icom_adapter, ptr %call7.i.i.i, i32 0, i32 3, i32 0, i32 1
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %.sink.i, ptr %47, align 4
  %status36.i = getelementptr %struct.icom_adapter, ptr %call7.i.i.i, i32 0, i32 3, i32 1, i32 19
  %49 = ptrtoint ptr %status36.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %status36.i, align 8
  %port39.i = getelementptr %struct.icom_adapter, ptr %call7.i.i.i, i32 0, i32 3, i32 2, i32 8
  %50 = ptrtoint ptr %port39.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 2, ptr %port39.i, align 4
  %status42.i = getelementptr %struct.icom_adapter, ptr %call7.i.i.i, i32 0, i32 3, i32 2, i32 19
  %51 = ptrtoint ptr %status42.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1, ptr %status42.i, align 8
  %imbed_modem45.i = getelementptr %struct.icom_adapter, ptr %call7.i.i.i, i32 0, i32 3, i32 2, i32 1
  %52 = ptrtoint ptr %imbed_modem45.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 2, ptr %imbed_modem45.i, align 4
  %status48.i = getelementptr %struct.icom_adapter, ptr %call7.i.i.i, i32 0, i32 3, i32 3, i32 19
  %53 = ptrtoint ptr %status48.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %status48.i, align 8
  br label %icom_init_ports.exit

icom_init_ports.exit:                             ; preds = %if.end.i, %if.then4.i, %if.then.i
  %call45 = call ptr @pci_ioremap_bar(ptr noundef %dev, i32 noundef 0) #11
  %54 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call45, ptr %call7.i.i.i, align 8
  %tobool47.not = icmp eq ptr %call45, null
  br i1 %tobool47.not, label %icom_init_ports.exit.probe_exit1_crit_edge, label %if.end49

icom_init_ports.exit.probe_exit1_crit_edge:       ; preds = %icom_init_ports.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %probe_exit1

if.end49:                                         ; preds = %icom_init_ports.exit
  %irq = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 46
  %55 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %irq, align 4
  %call.i = call i32 @request_threaded_irq(i32 noundef %56, ptr noundef nonnull @icom_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %call7.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool51.not = icmp eq i32 %call.i, 0
  br i1 %tobool51.not, label %if.end53, label %probe_exit2

if.end53:                                         ; preds = %if.end49
  %57 = ptrtoint ptr %numb_ports.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %numb_ports.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp4.i = icmp sgt i32 %58, 0
  br i1 %cmp4.i, label %if.end53.for.body.i138_crit_edge, label %if.end53.for.end_crit_edge

if.end53.for.end_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end53.for.body.i138_crit_edge:                 ; preds = %if.end53
  br label %for.body.i138

for.body.i138:                                    ; preds = %for.inc.i.for.body.i138_crit_edge, %if.end53.for.body.i138_crit_edge
  %port_num.05.i = phi i32 [ %inc.i142, %for.inc.i.for.body.i138_crit_edge ], [ 0, %if.end53.for.body.i138_crit_edge ]
  %status.i137 = getelementptr %struct.icom_adapter, ptr %call7.i.i.i, i32 0, i32 3, i32 %port_num.05.i, i32 19
  %59 = ptrtoint ptr %status.i137 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %status.i137, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %60)
  %cmp1.i = icmp eq i32 %60, 1
  br i1 %cmp1.i, label %if.then.i139, label %for.body.i138.for.inc.i_crit_edge

for.body.i138.for.inc.i_crit_edge:                ; preds = %for.body.i138
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then.i139:                                     ; preds = %for.body.i138
  %arrayidx.i = getelementptr %struct.icom_adapter, ptr %call7.i.i.i, i32 0, i32 3, i32 %port_num.05.i
  %61 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %version, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %62)
  %cmp.i.i = icmp eq i32 %62, 1
  %63 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %call7.i.i.i, align 8
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then.i139
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.i = getelementptr i8, ptr %64, i32 16384
  %global_reg.i.i = getelementptr %struct.icom_adapter, ptr %call7.i.i.i, i32 0, i32 3, i32 %port_num.05.i, i32 6
  %65 = ptrtoint ptr %global_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %add.ptr.i.i, ptr %global_reg.i.i, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %64, i32 16390
  %mul.neg.i.i = mul i32 %port_num.05.i, -2
  %add.ptr4.i.i = getelementptr i8, ptr %add.ptr3.i.i, i32 %mul.neg.i.i
  br label %icom_port_active.exit.i

if.else.i.i:                                      ; preds = %if.then.i139
  %add.ptr6.i.i = getelementptr i8, ptr %64, i32 32768
  %global_reg7.i.i = getelementptr %struct.icom_adapter, ptr %call7.i.i.i, i32 0, i32 3, i32 %port_num.05.i, i32 6
  %66 = ptrtoint ptr %global_reg7.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %add.ptr6.i.i, ptr %global_reg7.i.i, align 4
  %port.i.i = getelementptr %struct.icom_adapter, ptr %call7.i.i.i, i32 0, i32 3, i32 %port_num.05.i, i32 8
  %67 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %port.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %68)
  %cmp8.i.i = icmp slt i32 %68, 2
  br i1 %cmp8.i.i, label %if.then9.i.i, label %if.else18.i.i

if.then9.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr12.i.i = getelementptr i8, ptr %64, i32 32774
  %mul14.neg.i.i = mul i32 %68, -2
  %add.ptr16.i.i = getelementptr i8, ptr %add.ptr12.i.i, i32 %mul14.neg.i.i
  br label %icom_port_active.exit.i

if.else18.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr21.i.i = getelementptr i8, ptr %64, i32 32806
  %sub.neg.i.i = mul i32 %68, -2
  %idx.neg24.i.i = add i32 %sub.neg.i.i, 4
  %add.ptr25.i.i = getelementptr i8, ptr %add.ptr21.i.i, i32 %idx.neg24.i.i
  br label %icom_port_active.exit.i

icom_port_active.exit.i:                          ; preds = %if.else18.i.i, %if.then9.i.i, %if.then.i.i
  %add.ptr16.sink.i.i = phi ptr [ %add.ptr16.i.i, %if.then9.i.i ], [ %add.ptr25.i.i, %if.else18.i.i ], [ %add.ptr4.i.i, %if.then.i.i ]
  %int_reg17.i.i = getelementptr %struct.icom_adapter, ptr %call7.i.i.i, i32 0, i32 3, i32 %port_num.05.i, i32 5
  %69 = ptrtoint ptr %int_reg17.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %add.ptr16.sink.i.i, ptr %int_reg17.i.i, align 8
  %port.i140 = getelementptr %struct.icom_adapter, ptr %call7.i.i.i, i32 0, i32 3, i32 %port_num.05.i, i32 8
  %70 = ptrtoint ptr %port.i140 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %port.i140, align 4
  %mul.i = shl i32 %71, 13
  %add.ptr.i = getelementptr i8, ptr %64, i32 %mul.i
  %dram.i = getelementptr %struct.icom_adapter, ptr %call7.i.i.i, i32 0, i32 3, i32 %port_num.05.i, i32 7
  %72 = ptrtoint ptr %dram.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %add.ptr.i, ptr %dram.i, align 8
  %adapter.i = getelementptr %struct.icom_adapter, ptr %call7.i.i.i, i32 0, i32 3, i32 %port_num.05.i, i32 21
  %73 = ptrtoint ptr %adapter.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call7.i.i.i, ptr %adapter.i, align 8
  %74 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pci_dev, align 8
  %dev1.i.i = getelementptr inbounds %struct.pci_dev, ptr %75, i32 0, i32 44
  %xmit_buf_pci.i.i = getelementptr %struct.icom_adapter, ptr %call7.i.i.i, i32 0, i32 3, i32 %port_num.05.i, i32 14
  %call.i.i.i141 = call ptr @dma_alloc_attrs(ptr noundef %dev1.i.i, i32 noundef 4096, ptr noundef %xmit_buf_pci.i.i, i32 noundef 3264, i32 noundef 0) #11
  %xmit_buf.i.i = getelementptr %struct.icom_adapter, ptr %call7.i.i.i, i32 0, i32 3, i32 %port_num.05.i, i32 13
  %76 = ptrtoint ptr %xmit_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call.i.i.i141, ptr %xmit_buf.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %call.i.i.i141, null
  br i1 %tobool.not.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %icom_port_active.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.41) #14
  br label %do.end.i

if.end.i.i:                                       ; preds = %icom_port_active.exit.i
  %recv_buf_pci.i.i = getelementptr %struct.icom_adapter, ptr %call7.i.i.i, i32 0, i32 3, i32 %port_num.05.i, i32 16
  %call.i222.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev1.i.i, i32 noundef 4096, ptr noundef %recv_buf_pci.i.i, i32 noundef 3264, i32 noundef 0) #11
  %recv_buf.i.i = getelementptr %struct.icom_adapter, ptr %call7.i.i.i, i32 0, i32 3, i32 %port_num.05.i, i32 15
  %77 = ptrtoint ptr %recv_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call.i222.i.i, ptr %recv_buf.i.i, align 8
  %tobool8.not.i.i = icmp eq ptr %call.i222.i.i, null
  br i1 %tobool8.not.i.i, label %do.end12.i.i, label %if.end14.i.i

do.end12.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.45) #14
  call fastcc void @free_port_memory(ptr noundef %arrayidx.i) #11
  br label %do.end.i

if.end14.i.i:                                     ; preds = %if.end.i.i
  %statStg_pci.i.i = getelementptr %struct.icom_adapter, ptr %call7.i.i.i, i32 0, i32 3, i32 %port_num.05.i, i32 10
  %call.i223.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev1.i.i, i32 noundef 4096, ptr noundef %statStg_pci.i.i, i32 noundef 3264, i32 noundef 0) #11
  %statStg.i.i = getelementptr %struct.icom_adapter, ptr %call7.i.i.i, i32 0, i32 3, i32 %port_num.05.i, i32 9
  %78 = ptrtoint ptr %statStg.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call.i223.i.i, ptr %statStg.i.i, align 8
  %tobool19.not.i.i = icmp eq ptr %call.i223.i.i, null
  br i1 %tobool19.not.i.i, label %do.end23.i.i, label %if.end25.i.i

do.end23.i.i:                                     ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.48) #14
  call fastcc void @free_port_memory(ptr noundef %arrayidx.i) #11
  br label %do.end.i

if.end25.i.i:                                     ; preds = %if.end14.i.i
  %xmitRestart_pci.i.i = getelementptr %struct.icom_adapter, ptr %call7.i.i.i, i32 0, i32 3, i32 %port_num.05.i, i32 12
  %call.i224.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev1.i.i, i32 noundef 4096, ptr noundef %xmitRestart_pci.i.i, i32 noundef 3264, i32 noundef 0) #11
  %xmitRestart.i.i = getelementptr %struct.icom_adapter, ptr %call7.i.i.i, i32 0, i32 3, i32 %port_num.05.i, i32 11
  %79 = ptrtoint ptr %xmitRestart.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call.i224.i.i, ptr %xmitRestart.i.i, align 8
  %tobool30.not.i.i = icmp eq ptr %call.i224.i.i, null
  br i1 %tobool30.not.i.i, label %do.end34.i.i, label %get_port_memory.exit.i

do.end34.i.i:                                     ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.51) #14
  call fastcc void @free_port_memory(ptr noundef %arrayidx.i) #11
  br label %do.end.i

get_port_memory.exit.i:                           ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %80 = ptrtoint ptr %statStg.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %statStg.i.i, align 8
  %82 = ptrtoint ptr %81 to i32
  %add.i.i = add i32 %82, 20
  %83 = call ptr @memset(ptr %81, i32 0, i32 20)
  %84 = load ptr, ptr %statStg.i.i, align 8
  %leLengthASD57.i.i = getelementptr inbounds %struct.xmit_status_area, ptr %84, i32 0, i32 3
  %85 = ptrtoint ptr %leLengthASD57.i.i to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 16, ptr %leLengthASD57.i.i, align 4
  %86 = ptrtoint ptr %xmit_buf_pci.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %xmit_buf_pci.i.i, align 4
  %88 = call i32 @llvm.bswap.i32(i32 %87) #11
  %89 = ptrtoint ptr %statStg.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %statStg.i.i, align 8
  %leBuffer63.i.i = getelementptr inbounds %struct.xmit_status_area, ptr %90, i32 0, i32 2
  %91 = ptrtoint ptr %leBuffer63.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %88, ptr %leBuffer63.i.i, align 4
  %92 = load ptr, ptr %statStg.i.i, align 8
  %leLength.i.i = getelementptr %struct.statusArea, ptr %92, i32 0, i32 1, i32 0, i32 5
  %93 = ptrtoint ptr %leLength.i.i to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 0, ptr %leLength.i.i, align 4
  %94 = load ptr, ptr %statStg.i.i, align 8
  %WorkingLength.i.i = getelementptr %struct.statusArea, ptr %94, i32 0, i32 1, i32 0, i32 3
  %95 = ptrtoint ptr %WorkingLength.i.i to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 2, ptr %WorkingLength.i.i, align 4
  %add73.i.i = add i32 %82, 40
  %96 = load ptr, ptr %statStg.i.i, align 8
  %97 = ptrtoint ptr %96 to i32
  %sub.i.i = sub i32 %add73.i.i, %97
  %98 = ptrtoint ptr %statStg_pci.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %statStg_pci.i.i, align 4
  %add83.i.i = add i32 %sub.i.i, %99
  %100 = call i32 @llvm.bswap.i32(i32 %add83.i.i) #11
  %rcv85.i.i = getelementptr inbounds %struct.statusArea, ptr %96, i32 0, i32 1
  %101 = ptrtoint ptr %rcv85.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %rcv85.i.i, align 4
  %102 = ptrtoint ptr %recv_buf_pci.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %recv_buf_pci.i.i, align 4
  %104 = call i32 @llvm.bswap.i32(i32 %103) #11
  %105 = ptrtoint ptr %statStg.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %statStg.i.i, align 8
  %leBuffer92.i.i = getelementptr inbounds %struct.statusArea, ptr %106, i32 0, i32 1, i32 0, i32 2
  %107 = ptrtoint ptr %leBuffer92.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %104, ptr %leBuffer92.i.i, align 4
  %108 = load ptr, ptr %statStg.i.i, align 8
  %leLength.1.i.i = getelementptr %struct.statusArea, ptr %108, i32 0, i32 1, i32 1, i32 5
  %109 = ptrtoint ptr %leLength.1.i.i to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 0, ptr %leLength.1.i.i, align 4
  %110 = load ptr, ptr %statStg.i.i, align 8
  %WorkingLength.1.i.i = getelementptr %struct.statusArea, ptr %110, i32 0, i32 1, i32 1, i32 3
  %111 = ptrtoint ptr %WorkingLength.1.i.i to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 2, ptr %WorkingLength.1.i.i, align 4
  %112 = load ptr, ptr %statStg.i.i, align 8
  %113 = ptrtoint ptr %112 to i32
  %sub97.1.i.i = sub i32 %add.i.i, %113
  %114 = ptrtoint ptr %statStg_pci.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %statStg_pci.i.i, align 4
  %add99.1.i.i = add i32 %sub97.1.i.i, %115
  %116 = call i32 @llvm.bswap.i32(i32 %add99.1.i.i) #11
  %arrayidx102.1.i.i = getelementptr %struct.statusArea, ptr %112, i32 0, i32 1, i32 1
  %117 = ptrtoint ptr %arrayidx102.1.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %arrayidx102.1.i.i, align 4
  %118 = ptrtoint ptr %recv_buf_pci.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %recv_buf_pci.i.i, align 4
  %add107.1.i.i = add i32 %119, 2048
  %120 = call i32 @llvm.bswap.i32(i32 %add107.1.i.i) #11
  %121 = ptrtoint ptr %statStg.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %statStg.i.i, align 8
  %leBuffer111.1.i.i = getelementptr %struct.statusArea, ptr %122, i32 0, i32 1, i32 1, i32 2
  %123 = ptrtoint ptr %leBuffer111.1.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %120, ptr %leBuffer111.1.i.i, align 4
  br label %for.inc.i

do.end.i:                                         ; preds = %do.end34.i.i, %do.end23.i.i, %do.end12.i.i, %do.end.i.i
  %124 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %adapter.i, align 8
  %pci_dev.i = getelementptr inbounds %struct.icom_adapter, ptr %125, i32 0, i32 2
  %126 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %pci_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %127, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.39) #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end.i, %get_port_memory.exit.i, %for.body.i138.for.inc.i_crit_edge
  %inc.i142 = add nuw nsw i32 %port_num.05.i, 1
  %128 = ptrtoint ptr %numb_ports.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %numb_ports.i, align 8
  %cmp.i143 = icmp slt i32 %inc.i142, %129
  br i1 %cmp.i143, label %for.inc.i.for.body.i138_crit_edge, label %icom_load_ports.exit

for.inc.i.for.body.i138_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i138

icom_load_ports.exit:                             ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %cmp55166 = icmp sgt i32 %129, 0
  br i1 %cmp55166, label %for.body.lr.ph, label %icom_load_ports.exit.for.end_crit_edge

icom_load_ports.exit.for.end_crit_edge:           ; preds = %icom_load_ports.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %icom_load_ports.exit
  %dev78 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %index.0167 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %status = getelementptr %struct.icom_adapter, ptr %call7.i.i.i, i32 0, i32 3, i32 %index.0167, i32 19
  %130 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %131)
  %cmp57 = icmp eq i32 %131, 1
  br i1 %cmp57, label %if.then58, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then58:                                        ; preds = %for.body
  %arrayidx56 = getelementptr %struct.icom_adapter, ptr %call7.i.i.i, i32 0, i32 3, i32 %index.0167
  %adapter = getelementptr %struct.icom_adapter, ptr %call7.i.i.i, i32 0, i32 3, i32 %index.0167, i32 21
  %132 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %adapter, align 8
  %pci_dev59 = getelementptr inbounds %struct.icom_adapter, ptr %133, i32 0, i32 2
  %134 = ptrtoint ptr %pci_dev59 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %pci_dev59, align 4
  %irq60 = getelementptr inbounds %struct.pci_dev, ptr %135, i32 0, i32 46
  %136 = ptrtoint ptr %irq60 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %irq60, align 4
  %irq61 = getelementptr inbounds %struct.uart_port, ptr %arrayidx56, i32 0, i32 20
  %138 = ptrtoint ptr %irq61 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %137, ptr %irq61, align 4
  %type = getelementptr inbounds %struct.uart_port, ptr %arrayidx56, i32 0, i32 38
  %139 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 60, ptr %type, align 8
  %iotype = getelementptr inbounds %struct.uart_port, ptr %arrayidx56, i32 0, i32 26
  %140 = ptrtoint ptr %iotype to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 2, ptr %iotype, align 2
  %141 = ptrtoint ptr %base_addr_pci to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %base_addr_pci, align 4
  %143 = inttoptr i32 %142 to ptr
  %membase = getelementptr inbounds %struct.uart_port, ptr %arrayidx56, i32 0, i32 2
  %144 = ptrtoint ptr %membase to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %143, ptr %membase, align 4
  %fifosize = getelementptr inbounds %struct.uart_port, ptr %arrayidx56, i32 0, i32 23
  %145 = ptrtoint ptr %fifosize to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 16, ptr %fifosize, align 8
  %ops = getelementptr inbounds %struct.uart_port, ptr %arrayidx56, i32 0, i32 39
  %146 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr @icom_ops, ptr %ops, align 4
  %port = getelementptr %struct.icom_adapter, ptr %call7.i.i.i, i32 0, i32 3, i32 %index.0167, i32 8
  %147 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %port, align 4
  %149 = ptrtoint ptr %index6.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %index6.i, align 4
  %mul = shl i32 %150, 2
  %add = add i32 %mul, %148
  %line = getelementptr inbounds %struct.uart_port, ptr %arrayidx56, i32 0, i32 41
  %151 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %add, ptr %line, align 4
  %call71 = call i32 @uart_add_one_port(ptr noundef nonnull @icom_uart_driver, ptr noundef %arrayidx56) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %do.end82, label %if.then73

if.then73:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #13
  %152 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 0, ptr %status, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev78, ptr noundef nonnull @.str.19) #14
  br label %for.inc

do.end82:                                         ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev78, ptr noundef nonnull @.str.22) #14
  br label %for.inc

for.inc:                                          ; preds = %do.end82, %if.then73, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %index.0167, 1
  %153 = ptrtoint ptr %numb_ports.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %numb_ports.i, align 8
  %cmp55 = icmp slt i32 %inc, %154
  br i1 %cmp55, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %icom_load_ports.exit.for.end_crit_edge, %if.end53.for.end_crit_edge
  %kref = getelementptr inbounds %struct.icom_adapter, ptr %call7.i.i.i, i32 0, i32 9
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #11
  %155 = ptrtoint ptr %kref to i32
  call void @__asan_store4_noabort(i32 %155)
  store volatile i32 1, ptr %kref, align 4
  br label %cleanup

probe_exit2:                                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  %156 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %call7.i.i.i, align 8
  call void @iounmap(ptr noundef %157) #11
  br label %probe_exit1

probe_exit1:                                      ; preds = %probe_exit2, %icom_init_ports.exit.probe_exit1_crit_edge
  %retval1.0 = phi i32 [ %call.i, %probe_exit2 ], [ -12, %icom_init_ports.exit.probe_exit1_crit_edge ]
  %call.i.i.i146 = call zeroext i1 @__list_del_entry_valid(ptr noundef %icom_adapter_entry.i) #11
  br i1 %call.i.i.i146, label %if.end.i.i.i147, label %probe_exit1.icom_free_adapter.exit_crit_edge

probe_exit1.icom_free_adapter.exit_crit_edge:     ; preds = %probe_exit1
  call void @__sanitizer_cov_trace_pc() #13
  br label %icom_free_adapter.exit

if.end.i.i.i147:                                  ; preds = %probe_exit1
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.icom_adapter, ptr %call7.i.i.i, i32 0, i32 8, i32 1
  %158 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %prev.i.i.i, align 8
  %160 = ptrtoint ptr %icom_adapter_entry.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %icom_adapter_entry.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %161, i32 0, i32 1
  %162 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %159, ptr %prev1.i.i.i.i, align 4
  %163 = ptrtoint ptr %159 to i32
  call void @__asan_store4_noabort(i32 %163)
  store volatile ptr %161, ptr %159, align 4
  br label %icom_free_adapter.exit

icom_free_adapter.exit:                           ; preds = %if.end.i.i.i147, %probe_exit1.icom_free_adapter.exit_crit_edge
  %164 = ptrtoint ptr %icom_adapter_entry.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr inttoptr (i32 256 to ptr), ptr %icom_adapter_entry.i, align 4
  %prev.i.i148 = getelementptr inbounds %struct.icom_adapter, ptr %call7.i.i.i, i32 0, i32 8, i32 1
  %165 = ptrtoint ptr %prev.i.i148 to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i148, align 8
  call void @kfree(ptr noundef %call7.i.i.i) #11
  br label %probe_exit0

probe_exit0:                                      ; preds = %icom_free_adapter.exit, %do.end33
  %retval1.1 = phi i32 [ -5, %do.end33 ], [ %retval1.0, %icom_free_adapter.exit ]
  call void @pci_release_regions(ptr noundef %dev) #11
  call void @pci_disable_device(ptr noundef %dev) #11
  br label %cleanup

cleanup:                                          ; preds = %probe_exit0, %for.end, %do.end16, %do.end8, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call3, %do.end8 ], [ %call11, %do.end16 ], [ %retval1.1, %probe_exit0 ], [ 0, %for.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %command_reg) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @icom_remove(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %tmp.0.in = phi ptr [ @icom_adapter_head, %entry ], [ %tmp.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %tmp.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %tmp.0 = load ptr, ptr %tmp.0.in, align 4
  %cmp.i.not = icmp eq ptr %tmp.0, @icom_adapter_head
  br i1 %cmp.i.not, label %do.end, label %for.body

for.body:                                         ; preds = %for.cond
  %pci_dev = getelementptr i8, ptr %tmp.0, i32 -1748
  %1 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pci_dev, align 4
  %cmp = icmp eq ptr %2, %dev
  br i1 %cmp, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %kref = getelementptr i8, ptr %tmp.0, i32 8
  tail call fastcc void @kref_put(ptr noundef %kref)
  br label %cleanup

do.end:                                           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.119) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_ioremap_bar(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @icom_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %version = getelementptr inbounds %struct.icom_adapter, ptr %dev_id, i32 0, i32 5
  %0 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  %2 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_id, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %3, i32 32804
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !265
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !266
  %and = and i32 %5, 16383
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then2:                                         ; preds = %if.then
  %arrayidx = getelementptr %struct.icom_adapter, ptr %dev_id, i32 0, i32 3, i32 2
  %conv = trunc i32 %5 to i16
  tail call fastcc void @process_interrupt(i16 noundef zeroext %conv, ptr noundef %arrayidx)
  tail call void @_raw_spin_lock(ptr noundef %arrayidx) #11
  %dram.i = getelementptr %struct.icom_adapter, ptr %dev_id, i32 0, i32 3, i32 2, i32 7
  %6 = ptrtoint ptr %dram.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dram.i, align 4
  %isr.i = getelementptr inbounds %struct.func_dram, ptr %7, i32 0, i32 32
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %isr.i) #11, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !268
  %9 = load i8, ptr @check_modem_status.old_status, align 1
  %xor53.i = xor i8 %9, %8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor53.i)
  %tobool.not.i = icmp eq i8 %xor53.i, 0
  br i1 %tobool.not.i, label %if.then2.check_modem_status.exit_crit_edge, label %if.then.i

if.then2.check_modem_status.exit_crit_edge:       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %check_modem_status.exit

if.then.i:                                        ; preds = %if.then2
  %conv5.i = zext i8 %xor53.i to i32
  %and.i = and i32 %conv5.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool6.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool6.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then7.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then7.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %rng.i = getelementptr %struct.icom_adapter, ptr %dev_id, i32 0, i32 3, i32 2, i32 0, i32 31, i32 2
  %10 = ptrtoint ptr %rng.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rng.i, align 4
  %inc.i = add i32 %11, 1
  store i32 %inc.i, ptr %rng.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then7.i, %if.then.i.if.end.i_crit_edge
  %and10.i = and i32 %conv5.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %if.end.i.if.end16.i_crit_edge, label %if.then12.i

if.end.i.if.end16.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16.i

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %dsr.i = getelementptr %struct.icom_adapter, ptr %dev_id, i32 0, i32 3, i32 2, i32 0, i32 31, i32 1
  %12 = ptrtoint ptr %dsr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dsr.i, align 4
  %inc15.i = add i32 %13, 1
  store i32 %inc15.i, ptr %dsr.i, align 4
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then12.i, %if.end.i.if.end16.i_crit_edge
  %and18.i = and i32 %conv5.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool19.not.i, label %if.end16.i.if.end24.i_crit_edge, label %if.then20.i

if.end16.i.if.end24.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24.i

if.then20.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @uart_handle_dcd_change(ptr noundef %arrayidx, i32 noundef %and18.i) #11
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then20.i, %if.end16.i.if.end24.i_crit_edge
  %and26.i = and i32 %conv5.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  br i1 %tobool27.not.i, label %if.end24.i.if.end32.i_crit_edge, label %if.then28.i

if.end24.i.if.end32.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32.i

if.then28.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @uart_handle_cts_change(ptr noundef %arrayidx, i32 noundef %and26.i) #11
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then28.i, %if.end24.i.if.end32.i_crit_edge
  %state.i = getelementptr %struct.icom_adapter, ptr %dev_id, i32 0, i32 3, i32 2, i32 0, i32 30
  %14 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %state.i, align 4
  %delta_msr_wait.i = getelementptr inbounds %struct.tty_port, ptr %15, i32 0, i32 9
  tail call void @__wake_up(ptr noundef %delta_msr_wait.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #11
  store i8 %8, ptr @check_modem_status.old_status, align 1
  br label %check_modem_status.exit

check_modem_status.exit:                          ; preds = %if.end32.i, %if.then2.check_modem_status.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %arrayidx) #11
  br label %if.end

if.end:                                           ; preds = %check_modem_status.exit, %if.then.if.end_crit_edge
  %and3 = and i32 %5, 1073676288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.do.body_crit_edge, label %if.then5

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.then5:                                         ; preds = %if.end
  %status = getelementptr %struct.icom_adapter, ptr %dev_id, i32 0, i32 3, i32 3, i32 19
  %16 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp8 = icmp eq i32 %17, 1
  br i1 %cmp8, label %if.then10, label %if.then5.do.body_crit_edge

if.then5.do.body_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.then10:                                        ; preds = %if.then5
  %arrayidx7 = getelementptr %struct.icom_adapter, ptr %dev_id, i32 0, i32 3, i32 3
  %shr = lshr i32 %5, 16
  %conv11 = trunc i32 %shr to i16
  tail call fastcc void @process_interrupt(i16 noundef zeroext %conv11, ptr noundef %arrayidx7)
  tail call void @_raw_spin_lock(ptr noundef %arrayidx7) #11
  %dram.i84 = getelementptr %struct.icom_adapter, ptr %dev_id, i32 0, i32 3, i32 3, i32 7
  %18 = ptrtoint ptr %dram.i84 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dram.i84, align 4
  %isr.i85 = getelementptr inbounds %struct.func_dram, ptr %19, i32 0, i32 32
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %isr.i85) #11, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !268
  %21 = load i8, ptr @check_modem_status.old_status, align 1
  %xor53.i86 = xor i8 %21, %20
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor53.i86)
  %tobool.not.i87 = icmp eq i8 %xor53.i86, 0
  br i1 %tobool.not.i87, label %if.then10.check_modem_status.exit112_crit_edge, label %if.then.i91

if.then10.check_modem_status.exit112_crit_edge:   ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %check_modem_status.exit112

if.then.i91:                                      ; preds = %if.then10
  %conv5.i88 = zext i8 %xor53.i86 to i32
  %and.i89 = and i32 %conv5.i88, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i89)
  %tobool6.not.i90 = icmp eq i32 %and.i89, 0
  br i1 %tobool6.not.i90, label %if.then.i91.if.end.i97_crit_edge, label %if.then7.i94

if.then.i91.if.end.i97_crit_edge:                 ; preds = %if.then.i91
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i97

if.then7.i94:                                     ; preds = %if.then.i91
  call void @__sanitizer_cov_trace_pc() #13
  %rng.i92 = getelementptr %struct.icom_adapter, ptr %dev_id, i32 0, i32 3, i32 3, i32 0, i32 31, i32 2
  %22 = ptrtoint ptr %rng.i92 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rng.i92, align 4
  %inc.i93 = add i32 %23, 1
  store i32 %inc.i93, ptr %rng.i92, align 4
  br label %if.end.i97

if.end.i97:                                       ; preds = %if.then7.i94, %if.then.i91.if.end.i97_crit_edge
  %and10.i95 = and i32 %conv5.i88, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i95)
  %tobool11.not.i96 = icmp eq i32 %and10.i95, 0
  br i1 %tobool11.not.i96, label %if.end.i97.if.end16.i103_crit_edge, label %if.then12.i100

if.end.i97.if.end16.i103_crit_edge:               ; preds = %if.end.i97
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16.i103

if.then12.i100:                                   ; preds = %if.end.i97
  call void @__sanitizer_cov_trace_pc() #13
  %dsr.i98 = getelementptr %struct.icom_adapter, ptr %dev_id, i32 0, i32 3, i32 3, i32 0, i32 31, i32 1
  %24 = ptrtoint ptr %dsr.i98 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dsr.i98, align 4
  %inc15.i99 = add i32 %25, 1
  store i32 %inc15.i99, ptr %dsr.i98, align 4
  br label %if.end16.i103

if.end16.i103:                                    ; preds = %if.then12.i100, %if.end.i97.if.end16.i103_crit_edge
  %and18.i101 = and i32 %conv5.i88, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i101)
  %tobool19.not.i102 = icmp eq i32 %and18.i101, 0
  br i1 %tobool19.not.i102, label %if.end16.i103.if.end24.i107_crit_edge, label %if.then20.i104

if.end16.i103.if.end24.i107_crit_edge:            ; preds = %if.end16.i103
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24.i107

if.then20.i104:                                   ; preds = %if.end16.i103
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @uart_handle_dcd_change(ptr noundef %arrayidx7, i32 noundef %and18.i101) #11
  br label %if.end24.i107

if.end24.i107:                                    ; preds = %if.then20.i104, %if.end16.i103.if.end24.i107_crit_edge
  %and26.i105 = and i32 %conv5.i88, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i105)
  %tobool27.not.i106 = icmp eq i32 %and26.i105, 0
  br i1 %tobool27.not.i106, label %if.end24.i107.if.end32.i111_crit_edge, label %if.then28.i108

if.end24.i107.if.end32.i111_crit_edge:            ; preds = %if.end24.i107
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32.i111

if.then28.i108:                                   ; preds = %if.end24.i107
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @uart_handle_cts_change(ptr noundef %arrayidx7, i32 noundef %and26.i105) #11
  br label %if.end32.i111

if.end32.i111:                                    ; preds = %if.then28.i108, %if.end24.i107.if.end32.i111_crit_edge
  %state.i109 = getelementptr %struct.icom_adapter, ptr %dev_id, i32 0, i32 3, i32 3, i32 0, i32 30
  %26 = ptrtoint ptr %state.i109 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %state.i109, align 4
  %delta_msr_wait.i110 = getelementptr inbounds %struct.tty_port, ptr %27, i32 0, i32 9
  tail call void @__wake_up(ptr noundef %delta_msr_wait.i110, i32 noundef 1, i32 noundef 1, ptr noundef null) #11
  store i8 %20, ptr @check_modem_status.old_status, align 1
  br label %check_modem_status.exit112

check_modem_status.exit112:                       ; preds = %if.end32.i111, %if.then10.check_modem_status.exit112_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %arrayidx7) #11
  br label %do.body

do.body:                                          ; preds = %check_modem_status.exit112, %if.then5.do.body_crit_edge, %if.end.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !269
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #11, !srcloc !270
  %28 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev_id, align 4
  %add.ptr15 = getelementptr i8, ptr %29, i32 32772
  br label %if.end18

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr17 = getelementptr i8, ptr %3, i32 16388
  br label %if.end18

if.end18:                                         ; preds = %if.else, %do.body
  %int_reg.0 = phi ptr [ %add.ptr15, %do.body ], [ %add.ptr17, %if.else ]
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %int_reg.0) #11, !srcloc !265
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !271
  %and24 = and i32 %31, 16383
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end18.if.end30_crit_edge, label %if.then26

if.end18.if.end30_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.then26:                                        ; preds = %if.end18
  %port_info27 = getelementptr inbounds %struct.icom_adapter, ptr %dev_id, i32 0, i32 3
  %conv29 = trunc i32 %31 to i16
  tail call fastcc void @process_interrupt(i16 noundef zeroext %conv29, ptr noundef %port_info27)
  tail call void @_raw_spin_lock(ptr noundef %port_info27) #11
  %dram.i113 = getelementptr inbounds %struct.icom_adapter, ptr %dev_id, i32 0, i32 3, i32 0, i32 7
  %32 = ptrtoint ptr %dram.i113 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dram.i113, align 4
  %isr.i114 = getelementptr inbounds %struct.func_dram, ptr %33, i32 0, i32 32
  %34 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %isr.i114) #11, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !268
  %35 = load i8, ptr @check_modem_status.old_status, align 1
  %xor53.i115 = xor i8 %35, %34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor53.i115)
  %tobool.not.i116 = icmp eq i8 %xor53.i115, 0
  br i1 %tobool.not.i116, label %if.then26.check_modem_status.exit141_crit_edge, label %if.then.i120

if.then26.check_modem_status.exit141_crit_edge:   ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #13
  br label %check_modem_status.exit141

if.then.i120:                                     ; preds = %if.then26
  %conv5.i117 = zext i8 %xor53.i115 to i32
  %and.i118 = and i32 %conv5.i117, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i118)
  %tobool6.not.i119 = icmp eq i32 %and.i118, 0
  br i1 %tobool6.not.i119, label %if.then.i120.if.end.i126_crit_edge, label %if.then7.i123

if.then.i120.if.end.i126_crit_edge:               ; preds = %if.then.i120
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i126

if.then7.i123:                                    ; preds = %if.then.i120
  call void @__sanitizer_cov_trace_pc() #13
  %rng.i121 = getelementptr inbounds %struct.icom_adapter, ptr %dev_id, i32 0, i32 3, i32 0, i32 0, i32 31, i32 2
  %36 = ptrtoint ptr %rng.i121 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rng.i121, align 4
  %inc.i122 = add i32 %37, 1
  store i32 %inc.i122, ptr %rng.i121, align 4
  br label %if.end.i126

if.end.i126:                                      ; preds = %if.then7.i123, %if.then.i120.if.end.i126_crit_edge
  %and10.i124 = and i32 %conv5.i117, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i124)
  %tobool11.not.i125 = icmp eq i32 %and10.i124, 0
  br i1 %tobool11.not.i125, label %if.end.i126.if.end16.i132_crit_edge, label %if.then12.i129

if.end.i126.if.end16.i132_crit_edge:              ; preds = %if.end.i126
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16.i132

if.then12.i129:                                   ; preds = %if.end.i126
  call void @__sanitizer_cov_trace_pc() #13
  %dsr.i127 = getelementptr inbounds %struct.icom_adapter, ptr %dev_id, i32 0, i32 3, i32 0, i32 0, i32 31, i32 1
  %38 = ptrtoint ptr %dsr.i127 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dsr.i127, align 4
  %inc15.i128 = add i32 %39, 1
  store i32 %inc15.i128, ptr %dsr.i127, align 4
  br label %if.end16.i132

if.end16.i132:                                    ; preds = %if.then12.i129, %if.end.i126.if.end16.i132_crit_edge
  %and18.i130 = and i32 %conv5.i117, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i130)
  %tobool19.not.i131 = icmp eq i32 %and18.i130, 0
  br i1 %tobool19.not.i131, label %if.end16.i132.if.end24.i136_crit_edge, label %if.then20.i133

if.end16.i132.if.end24.i136_crit_edge:            ; preds = %if.end16.i132
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24.i136

if.then20.i133:                                   ; preds = %if.end16.i132
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @uart_handle_dcd_change(ptr noundef %port_info27, i32 noundef %and18.i130) #11
  br label %if.end24.i136

if.end24.i136:                                    ; preds = %if.then20.i133, %if.end16.i132.if.end24.i136_crit_edge
  %and26.i134 = and i32 %conv5.i117, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i134)
  %tobool27.not.i135 = icmp eq i32 %and26.i134, 0
  br i1 %tobool27.not.i135, label %if.end24.i136.if.end32.i140_crit_edge, label %if.then28.i137

if.end24.i136.if.end32.i140_crit_edge:            ; preds = %if.end24.i136
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32.i140

if.then28.i137:                                   ; preds = %if.end24.i136
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @uart_handle_cts_change(ptr noundef %port_info27, i32 noundef %and26.i134) #11
  br label %if.end32.i140

if.end32.i140:                                    ; preds = %if.then28.i137, %if.end24.i136.if.end32.i140_crit_edge
  %state.i138 = getelementptr inbounds %struct.icom_adapter, ptr %dev_id, i32 0, i32 3, i32 0, i32 0, i32 30
  %40 = ptrtoint ptr %state.i138 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %state.i138, align 4
  %delta_msr_wait.i139 = getelementptr inbounds %struct.tty_port, ptr %41, i32 0, i32 9
  tail call void @__wake_up(ptr noundef %delta_msr_wait.i139, i32 noundef 1, i32 noundef 1, ptr noundef null) #11
  store i8 %34, ptr @check_modem_status.old_status, align 1
  br label %check_modem_status.exit141

check_modem_status.exit141:                       ; preds = %if.end32.i140, %if.then26.check_modem_status.exit141_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %port_info27) #11
  br label %if.end30

if.end30:                                         ; preds = %check_modem_status.exit141, %if.end18.if.end30_crit_edge
  %and31 = and i32 %31, 1073676288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end30.do.body44_crit_edge, label %if.then33

if.end30.do.body44_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body44

if.then33:                                        ; preds = %if.end30
  %status36 = getelementptr %struct.icom_adapter, ptr %dev_id, i32 0, i32 3, i32 1, i32 19
  %42 = ptrtoint ptr %status36 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %status36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %43)
  %cmp37 = icmp eq i32 %43, 1
  br i1 %cmp37, label %if.then39, label %if.then33.do.body44_crit_edge

if.then33.do.body44_crit_edge:                    ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body44

if.then39:                                        ; preds = %if.then33
  %arrayidx35 = getelementptr %struct.icom_adapter, ptr %dev_id, i32 0, i32 3, i32 1
  %shr40 = lshr i32 %31, 16
  %conv41 = trunc i32 %shr40 to i16
  tail call fastcc void @process_interrupt(i16 noundef zeroext %conv41, ptr noundef %arrayidx35)
  tail call void @_raw_spin_lock(ptr noundef %arrayidx35) #11
  %dram.i142 = getelementptr %struct.icom_adapter, ptr %dev_id, i32 0, i32 3, i32 1, i32 7
  %44 = ptrtoint ptr %dram.i142 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dram.i142, align 4
  %isr.i143 = getelementptr inbounds %struct.func_dram, ptr %45, i32 0, i32 32
  %46 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %isr.i143) #11, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !268
  %47 = load i8, ptr @check_modem_status.old_status, align 1
  %xor53.i144 = xor i8 %47, %46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor53.i144)
  %tobool.not.i145 = icmp eq i8 %xor53.i144, 0
  br i1 %tobool.not.i145, label %if.then39.check_modem_status.exit170_crit_edge, label %if.then.i149

if.then39.check_modem_status.exit170_crit_edge:   ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #13
  br label %check_modem_status.exit170

if.then.i149:                                     ; preds = %if.then39
  %conv5.i146 = zext i8 %xor53.i144 to i32
  %and.i147 = and i32 %conv5.i146, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i147)
  %tobool6.not.i148 = icmp eq i32 %and.i147, 0
  br i1 %tobool6.not.i148, label %if.then.i149.if.end.i155_crit_edge, label %if.then7.i152

if.then.i149.if.end.i155_crit_edge:               ; preds = %if.then.i149
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i155

if.then7.i152:                                    ; preds = %if.then.i149
  call void @__sanitizer_cov_trace_pc() #13
  %rng.i150 = getelementptr %struct.icom_adapter, ptr %dev_id, i32 0, i32 3, i32 1, i32 0, i32 31, i32 2
  %48 = ptrtoint ptr %rng.i150 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rng.i150, align 4
  %inc.i151 = add i32 %49, 1
  store i32 %inc.i151, ptr %rng.i150, align 4
  br label %if.end.i155

if.end.i155:                                      ; preds = %if.then7.i152, %if.then.i149.if.end.i155_crit_edge
  %and10.i153 = and i32 %conv5.i146, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i153)
  %tobool11.not.i154 = icmp eq i32 %and10.i153, 0
  br i1 %tobool11.not.i154, label %if.end.i155.if.end16.i161_crit_edge, label %if.then12.i158

if.end.i155.if.end16.i161_crit_edge:              ; preds = %if.end.i155
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16.i161

if.then12.i158:                                   ; preds = %if.end.i155
  call void @__sanitizer_cov_trace_pc() #13
  %dsr.i156 = getelementptr %struct.icom_adapter, ptr %dev_id, i32 0, i32 3, i32 1, i32 0, i32 31, i32 1
  %50 = ptrtoint ptr %dsr.i156 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %dsr.i156, align 4
  %inc15.i157 = add i32 %51, 1
  store i32 %inc15.i157, ptr %dsr.i156, align 4
  br label %if.end16.i161

if.end16.i161:                                    ; preds = %if.then12.i158, %if.end.i155.if.end16.i161_crit_edge
  %and18.i159 = and i32 %conv5.i146, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i159)
  %tobool19.not.i160 = icmp eq i32 %and18.i159, 0
  br i1 %tobool19.not.i160, label %if.end16.i161.if.end24.i165_crit_edge, label %if.then20.i162

if.end16.i161.if.end24.i165_crit_edge:            ; preds = %if.end16.i161
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24.i165

if.then20.i162:                                   ; preds = %if.end16.i161
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @uart_handle_dcd_change(ptr noundef %arrayidx35, i32 noundef %and18.i159) #11
  br label %if.end24.i165

if.end24.i165:                                    ; preds = %if.then20.i162, %if.end16.i161.if.end24.i165_crit_edge
  %and26.i163 = and i32 %conv5.i146, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i163)
  %tobool27.not.i164 = icmp eq i32 %and26.i163, 0
  br i1 %tobool27.not.i164, label %if.end24.i165.if.end32.i169_crit_edge, label %if.then28.i166

if.end24.i165.if.end32.i169_crit_edge:            ; preds = %if.end24.i165
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32.i169

if.then28.i166:                                   ; preds = %if.end24.i165
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @uart_handle_cts_change(ptr noundef %arrayidx35, i32 noundef %and26.i163) #11
  br label %if.end32.i169

if.end32.i169:                                    ; preds = %if.then28.i166, %if.end24.i165.if.end32.i169_crit_edge
  %state.i167 = getelementptr %struct.icom_adapter, ptr %dev_id, i32 0, i32 3, i32 1, i32 0, i32 30
  %52 = ptrtoint ptr %state.i167 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %state.i167, align 4
  %delta_msr_wait.i168 = getelementptr inbounds %struct.tty_port, ptr %53, i32 0, i32 9
  tail call void @__wake_up(ptr noundef %delta_msr_wait.i168, i32 noundef 1, i32 noundef 1, ptr noundef null) #11
  store i8 %46, ptr @check_modem_status.old_status, align 1
  br label %check_modem_status.exit170

check_modem_status.exit170:                       ; preds = %if.end32.i169, %if.then39.check_modem_status.exit170_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %arrayidx35) #11
  br label %do.body44

do.body44:                                        ; preds = %check_modem_status.exit170, %if.then33.do.body44_crit_edge, %if.end30.do.body44_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !272
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %int_reg.0, i32 %30) #11, !srcloc !270
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %int_reg.0) #11, !srcloc !265
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !273
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_add_one_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @process_interrupt(i16 noundef zeroext %port_int_reg, ptr noundef %icom_port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef %icom_port) #11
  %conv = zext i16 %port_int_reg to i32
  %and = and i32 %conv, 8704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %0 = and i16 %port_int_reg, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %0)
  %tobool.not.i = icmp eq i16 %0, 0
  %or.cond = or i1 %tobool.not.i, %tobool.not
  br i1 %or.cond, label %entry.if.end_crit_edge, label %if.then.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then.i:                                        ; preds = %entry
  %statStg.i = getelementptr inbounds %struct.icom_port, ptr %icom_port, i32 0, i32 9
  %1 = ptrtoint ptr %statStg.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %statStg.i, align 4
  %flags.i = getelementptr inbounds %struct.xmit_status_area, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %flags.i, align 2
  %5 = and i16 %4, -9
  store i16 %5, ptr %flags.i, align 2
  %6 = load ptr, ptr %statStg.i, align 4
  %leLength.i = getelementptr inbounds %struct.xmit_status_area, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %leLength.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %leLength.i, align 4
  %9 = tail call i16 @llvm.bswap.i16(i16 %8) #11
  %conv7.i = zext i16 %9 to i32
  %tx.i = getelementptr inbounds %struct.uart_port, ptr %icom_port, i32 0, i32 31, i32 5
  %10 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx.i, align 4
  %add.i = add i32 %11, %conv7.i
  store i32 %add.i, ptr %tx.i, align 4
  %state.i = getelementptr inbounds %struct.uart_port, ptr %icom_port, i32 0, i32 30
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp44.not.i = icmp eq i16 %8, 0
  br i1 %cmp44.not.i, label %if.then.i.for.end.i_crit_edge, label %land.rhs.preheader.i

if.then.i.for.end.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

land.rhs.preheader.i:                             ; preds = %if.then.i
  %umax.i = tail call i32 @llvm.umax.i32(i32 %conv7.i, i32 1) #11
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.body.i.land.rhs.i_crit_edge, %land.rhs.preheader.i
  %i.045.i = phi i32 [ %inc26.i, %for.body.i.land.rhs.i_crit_edge ], [ 0, %land.rhs.preheader.i ]
  %12 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %state.i, align 4
  %head.i = getelementptr inbounds %struct.uart_state, ptr %13, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %head.i, align 4
  %tail.i = getelementptr inbounds %struct.uart_state, ptr %13, i32 0, i32 2, i32 2
  %16 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tail.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp15.not.i = icmp eq i32 %15, %17
  br i1 %cmp15.not.i, label %land.rhs.i.for.end.i_crit_edge, label %for.body.i

land.rhs.i.for.end.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i:                                       ; preds = %land.rhs.i
  %inc.i = add i32 %17, 1
  %18 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %inc.i, ptr %tail.i, align 4
  %19 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %state.i, align 4
  %tail24.i = getelementptr inbounds %struct.uart_state, ptr %20, i32 0, i32 2, i32 2
  %21 = ptrtoint ptr %tail24.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tail24.i, align 4
  %and25.i = and i32 %22, 4095
  store i32 %and25.i, ptr %tail24.i, align 4
  %inc26.i = add nuw nsw i32 %i.045.i, 1
  %exitcond.not.i = icmp eq i32 %inc26.i, %umax.i
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.land.rhs.i_crit_edge

for.body.i.land.rhs.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %land.rhs.i.for.end.i_crit_edge, %if.then.i.for.end.i_crit_edge
  %call.i = tail call fastcc i32 @icom_write(ptr noundef %icom_port) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool28.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool28.not.i, label %if.then29.i, label %for.end.i.if.end_crit_edge

for.end.i.if.end_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then29.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @uart_write_wakeup(ptr noundef %icom_port) #11
  br label %if.end

if.end:                                           ; preds = %if.then29.i, %for.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %and3 = and i32 %conv, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.if.end6_crit_edge, label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then5:                                         ; preds = %if.end
  %state.i17 = getelementptr inbounds %struct.uart_port, ptr %icom_port, i32 0, i32 30
  %23 = ptrtoint ptr %state.i17 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %state.i17, align 4
  %next_rcv.i = getelementptr inbounds %struct.icom_port, ptr %icom_port, i32 0, i32 17
  %25 = ptrtoint ptr %next_rcv.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %next_rcv.i, align 4
  %statStg.i18 = getelementptr inbounds %struct.icom_port, ptr %icom_port, i32 0, i32 9
  %27 = ptrtoint ptr %statStg.i18 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %statStg.i18, align 4
  %sext.i = shl i32 %26, 16
  %idxprom.i = ashr exact i32 %sext.i, 16
  %flags.i19 = getelementptr %struct.statusArea, ptr %28, i32 0, i32 1, i32 %idxprom.i, i32 6
  %29 = ptrtoint ptr %flags.i19 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %flags.i19, align 2
  %31 = tail call i16 @llvm.bswap.i16(i16 %30) #11
  %conv221.i = zext i16 %31 to i32
  %and22.i = and i32 %conv221.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool.not23.i = icmp eq i32 %and22.i, 0
  br i1 %tobool.not23.i, label %if.then5.recv_interrupt.exit_crit_edge, label %while.body.lr.ph.i

if.then5.recv_interrupt.exit_crit_edge:           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %recv_interrupt.exit

while.body.lr.ph.i:                               ; preds = %if.then5
  %conv.i = trunc i32 %26 to i16
  %recv_buf_pci.i = getelementptr inbounds %struct.icom_port, ptr %icom_port, i32 0, i32 16
  %recv_buf.i = getelementptr inbounds %struct.icom_port, ptr %icom_port, i32 0, i32 15
  %rx.i = getelementptr inbounds %struct.uart_port, ptr %icom_port, i32 0, i32 31, i32 4
  %brk.i = getelementptr inbounds %struct.uart_port, ptr %icom_port, i32 0, i32 31, i32 9
  %parity.i = getelementptr inbounds %struct.uart_port, ptr %icom_port, i32 0, i32 31, i32 8
  %frame.i = getelementptr inbounds %struct.uart_port, ptr %icom_port, i32 0, i32 31, i32 6
  %overrun.i = getelementptr inbounds %struct.uart_port, ptr %icom_port, i32 0, i32 31, i32 7
  %ignore_status_mask.i = getelementptr inbounds %struct.icom_port, ptr %icom_port, i32 0, i32 4
  %read_status_mask.i = getelementptr inbounds %struct.icom_port, ptr %icom_port, i32 0, i32 3
  %tail.i.i = getelementptr inbounds %struct.tty_bufhead, ptr %24, i32 0, i32 8
  br label %while.body.i

while.body.i:                                     ; preds = %ignore_char.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %conv226.i = phi i32 [ %conv221.i, %while.body.lr.ph.i ], [ %conv2.i, %ignore_char.i.while.body.i_crit_edge ]
  %status.025.i = phi i16 [ %31, %while.body.lr.ph.i ], [ %105, %ignore_char.i.while.body.i_crit_edge ]
  %rcv_buff.024.i = phi i16 [ %conv.i, %while.body.lr.ph.i ], [ %spec.store.select.i, %ignore_char.i.while.body.i_crit_edge ]
  %32 = ptrtoint ptr %statStg.i18 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %statStg.i18, align 4
  %idxprom6.i = sext i16 %rcv_buff.024.i to i32
  %leLength.i20 = getelementptr %struct.statusArea, ptr %33, i32 0, i32 1, i32 %idxprom6.i, i32 5
  %34 = ptrtoint ptr %leLength.i20 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %leLength.i20, align 4
  %36 = tail call i16 @llvm.bswap.i16(i16 %35) #11
  %conv8.i = sext i16 %36 to i32
  %leBuffer.i = getelementptr %struct.statusArea, ptr %33, i32 0, i32 1, i32 %idxprom6.i, i32 2
  %37 = ptrtoint ptr %leBuffer.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %leBuffer.i, align 4
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #11
  %40 = ptrtoint ptr %recv_buf_pci.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %recv_buf_pci.i, align 4
  %sub.i = sub i32 %39, %41
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %cmp.i = icmp sgt i16 %36, 0
  br i1 %cmp.i, label %if.then.i21, label %while.body.i.if.end.i_crit_edge

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i21:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %42 = ptrtoint ptr %recv_buf.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %recv_buf.i, align 4
  %arrayidx16.i = getelementptr i8, ptr %43, i32 %sub.i
  %44 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx16.i, align 1
  %conv17.i = zext i8 %45 to i32
  %sub20.i = add nsw i32 %conv8.i, -1
  %call.i.i = tail call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %24, ptr noundef %arrayidx16.i, i8 noundef zeroext 0, i32 noundef %sub20.i) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i21, %while.body.i.if.end.i_crit_edge
  %first.0.i = phi i32 [ %conv17.i, %if.then.i21 ], [ -1, %while.body.i.if.end.i_crit_edge ]
  %46 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rx.i, align 4
  %add.i22 = add i32 %47, %conv8.i
  store i32 %add.i22, ptr %rx.i, align 4
  %and25.i23 = and i32 %conv226.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i23)
  %tobool26.not.i = icmp ne i32 %and25.i23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %first.0.i)
  %cmp27.i = icmp eq i32 %first.0.i, 0
  %or.cond.i = select i1 %tobool26.not.i, i1 %cmp27.i, i1 false
  %and31.i = and i16 %status.025.i, -6
  %48 = or i16 %and31.i, 4
  %status.1.i = select i1 %or.cond.i, i16 %48, i16 %status.025.i
  %conv36.i = zext i16 %status.1.i to i32
  %and37.i = and i32 %conv36.i, 197
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.i)
  %tobool38.not.i = icmp eq i32 %and37.i, 0
  br i1 %tobool38.not.i, label %if.end.i.if.end89.i_crit_edge, label %if.then39.i

if.end.i.if.end89.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end89.i

if.then39.i:                                      ; preds = %if.end.i
  %and41.i = and i32 %conv36.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41.i)
  %tobool42.not.i = icmp eq i32 %and41.i, 0
  br i1 %tobool42.not.i, label %if.then39.i.if.end44.i_crit_edge, label %if.then43.i

if.then39.i.if.end44.i_crit_edge:                 ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44.i

if.then43.i:                                      ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #13
  %49 = ptrtoint ptr %brk.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %brk.i, align 4
  %inc.i24 = add i32 %50, 1
  store i32 %inc.i24, ptr %brk.i, align 4
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.then43.i, %if.then39.i.if.end44.i_crit_edge
  %and46.i = and i32 %conv36.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.i)
  %tobool47.not.i = icmp eq i32 %and46.i, 0
  br i1 %tobool47.not.i, label %if.end44.i.if.end50.i_crit_edge, label %if.then48.i

if.end44.i.if.end50.i_crit_edge:                  ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50.i

if.then48.i:                                      ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #13
  %51 = ptrtoint ptr %parity.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %parity.i, align 4
  %inc49.i = add i32 %52, 1
  store i32 %inc49.i, ptr %parity.i, align 4
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.then48.i, %if.end44.i.if.end50.i_crit_edge
  %and52.i = and i32 %conv36.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52.i)
  %tobool53.not.i = icmp eq i32 %and52.i, 0
  br i1 %tobool53.not.i, label %if.end50.i.if.end56.i_crit_edge, label %if.then54.i

if.end50.i.if.end56.i_crit_edge:                  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end56.i

if.then54.i:                                      ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #13
  %53 = ptrtoint ptr %frame.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %frame.i, align 4
  %inc55.i = add i32 %54, 1
  store i32 %inc55.i, ptr %frame.i, align 4
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.then54.i, %if.end50.i.if.end56.i_crit_edge
  %and58.i = and i32 %conv36.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58.i)
  %tobool59.not.i = icmp eq i32 %and58.i, 0
  br i1 %tobool59.not.i, label %if.end56.i.if.end62.i_crit_edge, label %if.then60.i

if.end56.i.if.end62.i_crit_edge:                  ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62.i

if.then60.i:                                      ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #13
  %55 = ptrtoint ptr %overrun.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %overrun.i, align 4
  %inc61.i = add i32 %56, 1
  store i32 %inc61.i, ptr %overrun.i, align 4
  br label %if.end62.i

if.end62.i:                                       ; preds = %if.then60.i, %if.end56.i.if.end62.i_crit_edge
  %57 = ptrtoint ptr %ignore_status_mask.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %ignore_status_mask.i, align 1
  %conv64.i = zext i8 %58 to i32
  %and65.i = and i32 %conv64.i, %conv36.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65.i)
  %tobool66.not.i = icmp eq i32 %and65.i, 0
  br i1 %tobool66.not.i, label %if.end68.i, label %if.end62.i.ignore_char.i_crit_edge

if.end62.i.ignore_char.i_crit_edge:               ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ignore_char.i

if.end68.i:                                       ; preds = %if.end62.i
  %59 = ptrtoint ptr %read_status_mask.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %read_status_mask.i, align 2
  %conv69.i = zext i8 %60 to i16
  %and71.i = and i16 %status.1.i, %conv69.i
  %conv73.i = zext i16 %and71.i to i32
  %and74.i = and i32 %conv73.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74.i)
  %tobool75.not.i = icmp eq i32 %and74.i, 0
  br i1 %tobool75.not.i, label %if.else.i, label %if.end68.i.if.end89.i_crit_edge

if.end68.i.if.end89.i_crit_edge:                  ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end89.i

if.else.i:                                        ; preds = %if.end68.i
  %and78.i = and i32 %conv73.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78.i)
  %tobool79.not.i = icmp eq i32 %and78.i, 0
  br i1 %tobool79.not.i, label %if.else81.i, label %if.else.i.if.end89.i_crit_edge

if.else.i.if.end89.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end89.i

if.else81.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %61 = trunc i16 %and71.i to i8
  %62 = shl i8 %61, 1
  %63 = and i8 %62, 2
  br label %if.end89.i

if.end89.i:                                       ; preds = %if.else81.i, %if.else.i.if.end89.i_crit_edge, %if.end68.i.if.end89.i_crit_edge, %if.end.i.if.end89.i_crit_edge
  %status.2.i = phi i16 [ %status.1.i, %if.end.i.if.end89.i_crit_edge ], [ %and71.i, %if.end68.i.if.end89.i_crit_edge ], [ %and71.i, %if.else81.i ], [ %and71.i, %if.else.i.if.end89.i_crit_edge ]
  %flag.0.i = phi i8 [ 0, %if.end.i.if.end89.i_crit_edge ], [ 1, %if.end68.i.if.end89.i_crit_edge ], [ %63, %if.else81.i ], [ 3, %if.else.i.if.end89.i_crit_edge ]
  %64 = ptrtoint ptr %recv_buf.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %recv_buf.i, align 4
  %add.ptr91.i = getelementptr i8, ptr %65, i32 -1
  %add.ptr93.i = getelementptr i8, ptr %add.ptr91.i, i32 %sub.i
  %add.ptr94.i = getelementptr i8, ptr %add.ptr93.i, i32 %conv8.i
  %66 = ptrtoint ptr %add.ptr94.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %add.ptr94.i, align 1
  %68 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %tail.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.tty_buffer, ptr %69, i32 0, i32 5
  %70 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %71, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %flag.0.i)
  %cmp.i.i = icmp eq i8 %flag.0.i, 0
  %72 = or i1 %cmp.i.i, %tobool.not.i.i
  br i1 %72, label %land.lhs.true.i.i, label %if.end89.i.if.end12.i.i_crit_edge

if.end89.i.if.end12.i.i_crit_edge:                ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i.i

land.lhs.true.i.i:                                ; preds = %if.end89.i
  %used.i.i = getelementptr inbounds %struct.tty_buffer, ptr %69, i32 0, i32 1
  %73 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %used.i.i, align 4
  %size.i.i = getelementptr inbounds %struct.tty_buffer, ptr %69, i32 0, i32 2
  %75 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %76)
  %cmp3.i.i = icmp slt i32 %74, %76
  br i1 %cmp3.i.i, label %if.then.i.i, label %land.lhs.true.i.i.if.end12.i.i_crit_edge

land.lhs.true.i.i.if.end12.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  br i1 %tobool.not.i.i, label %if.then8.i.i, label %if.then.i.i.if.end.i.i_crit_edge

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then8.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %data.i.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %69, i32 0, i32 6
  %add.ptr.i.i.i.i = getelementptr i8, ptr %data.i.i.i.i, i32 %74
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %76
  %77 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %flag.0.i, ptr %add.ptr.i.i.i, align 1
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then8.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %78 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %used.i.i, align 4
  %inc.i.i = add i32 %79, 1
  store i32 %inc.i.i, ptr %used.i.i, align 4
  %data.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %69, i32 0, i32 6
  %add.ptr.i1.i.i = getelementptr i8, ptr %data.i.i.i, i32 %79
  %80 = ptrtoint ptr %add.ptr.i1.i.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %67, ptr %add.ptr.i1.i.i, align 1
  br label %tty_insert_flip_char.exit.i

if.end12.i.i:                                     ; preds = %land.lhs.true.i.i.if.end12.i.i_crit_edge, %if.end89.i.if.end12.i.i_crit_edge
  %call13.i.i = tail call i32 @__tty_insert_flip_char(ptr noundef %24, i8 noundef zeroext %67, i8 noundef zeroext %flag.0.i) #11
  br label %tty_insert_flip_char.exit.i

tty_insert_flip_char.exit.i:                      ; preds = %if.end12.i.i, %if.end.i.i
  %81 = and i16 %status.2.i, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %81)
  %tobool98.not.i = icmp eq i16 %81, 0
  br i1 %tobool98.not.i, label %tty_insert_flip_char.exit.i.ignore_char.i_crit_edge, label %if.then99.i

tty_insert_flip_char.exit.i.ignore_char.i_crit_edge: ; preds = %tty_insert_flip_char.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ignore_char.i

if.then99.i:                                      ; preds = %tty_insert_flip_char.exit.i
  %82 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %tail.i.i, align 4
  %flags.i2.i = getelementptr inbounds %struct.tty_buffer, ptr %83, i32 0, i32 5
  %84 = ptrtoint ptr %flags.i2.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %flags.i2.i, align 4
  %and.i3.i = and i32 %85, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i)
  %tobool.not.i4.i = icmp eq i32 %and.i3.i, 0
  br i1 %tobool.not.i4.i, label %land.lhs.true.i8.i, label %if.then99.i.if.end12.i19.i_crit_edge

if.then99.i.if.end12.i19.i_crit_edge:             ; preds = %if.then99.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i19.i

land.lhs.true.i8.i:                               ; preds = %if.then99.i
  %used.i5.i = getelementptr inbounds %struct.tty_buffer, ptr %83, i32 0, i32 1
  %86 = ptrtoint ptr %used.i5.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %used.i5.i, align 4
  %size.i6.i = getelementptr inbounds %struct.tty_buffer, ptr %83, i32 0, i32 2
  %88 = ptrtoint ptr %size.i6.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %size.i6.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %87, i32 %89)
  %cmp3.i7.i = icmp slt i32 %87, %89
  br i1 %cmp3.i7.i, label %if.end.i17.i, label %land.lhs.true.i8.i.if.end12.i19.i_crit_edge

land.lhs.true.i8.i.if.end12.i19.i_crit_edge:      ; preds = %land.lhs.true.i8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i19.i

if.end.i17.i:                                     ; preds = %land.lhs.true.i8.i
  call void @__sanitizer_cov_trace_pc() #13
  %data.i.i.i10.i = getelementptr inbounds %struct.tty_buffer, ptr %83, i32 0, i32 6
  %add.ptr.i.i.i11.i = getelementptr i8, ptr %data.i.i.i10.i, i32 %87
  %add.ptr.i.i12.i = getelementptr i8, ptr %add.ptr.i.i.i11.i, i32 %89
  %90 = ptrtoint ptr %add.ptr.i.i12.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 4, ptr %add.ptr.i.i12.i, align 1
  %91 = ptrtoint ptr %used.i5.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %used.i5.i, align 4
  %inc.i14.i = add i32 %92, 1
  store i32 %inc.i14.i, ptr %used.i5.i, align 4
  %add.ptr.i1.i16.i = getelementptr i8, ptr %data.i.i.i10.i, i32 %92
  %93 = ptrtoint ptr %add.ptr.i1.i16.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 0, ptr %add.ptr.i1.i16.i, align 1
  br label %ignore_char.i

if.end12.i19.i:                                   ; preds = %land.lhs.true.i8.i.if.end12.i19.i_crit_edge, %if.then99.i.if.end12.i19.i_crit_edge
  %call13.i18.i = tail call i32 @__tty_insert_flip_char(ptr noundef %24, i8 noundef zeroext 0, i8 noundef zeroext 4) #11
  br label %ignore_char.i

ignore_char.i:                                    ; preds = %if.end12.i19.i, %if.end.i17.i, %tty_insert_flip_char.exit.i.ignore_char.i_crit_edge, %if.end62.i.ignore_char.i_crit_edge
  %94 = ptrtoint ptr %statStg.i18 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %statStg.i18, align 4
  %flags106.i = getelementptr %struct.statusArea, ptr %95, i32 0, i32 1, i32 %idxprom6.i, i32 6
  %96 = ptrtoint ptr %flags106.i to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 0, ptr %flags106.i, align 2
  %97 = load ptr, ptr %statStg.i18, align 4
  %leLength111.i = getelementptr %struct.statusArea, ptr %97, i32 0, i32 1, i32 %idxprom6.i, i32 5
  %98 = ptrtoint ptr %leLength111.i to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 0, ptr %leLength111.i, align 4
  %99 = load ptr, ptr %statStg.i18, align 4
  %WorkingLength.i = getelementptr %struct.statusArea, ptr %99, i32 0, i32 1, i32 %idxprom6.i, i32 3
  %100 = ptrtoint ptr %WorkingLength.i to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 2, ptr %WorkingLength.i, align 4
  %inc116.i = add i16 %rcv_buff.024.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %inc116.i)
  %cmp118.i = icmp eq i16 %inc116.i, 2
  %spec.store.select.i = select i1 %cmp118.i, i16 0, i16 %inc116.i
  %101 = ptrtoint ptr %statStg.i18 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %statStg.i18, align 4
  %idxprom124.i = sext i16 %spec.store.select.i to i32
  %flags126.i = getelementptr %struct.statusArea, ptr %102, i32 0, i32 1, i32 %idxprom124.i, i32 6
  %103 = ptrtoint ptr %flags126.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %flags126.i, align 2
  %105 = tail call i16 @llvm.bswap.i16(i16 %104) #11
  %conv2.i = zext i16 %105 to i32
  %and.i = and i32 %conv2.i, 16
  %tobool.not.i25 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i25, label %ignore_char.i.recv_interrupt.exit_crit_edge, label %ignore_char.i.while.body.i_crit_edge

ignore_char.i.while.body.i_crit_edge:             ; preds = %ignore_char.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

ignore_char.i.recv_interrupt.exit_crit_edge:      ; preds = %ignore_char.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %recv_interrupt.exit

recv_interrupt.exit:                              ; preds = %ignore_char.i.recv_interrupt.exit_crit_edge, %if.then5.recv_interrupt.exit_crit_edge
  %conv127.pre-phi.i = phi i32 [ %idxprom.i, %if.then5.recv_interrupt.exit_crit_edge ], [ %idxprom124.i, %ignore_char.i.recv_interrupt.exit_crit_edge ]
  %106 = ptrtoint ptr %next_rcv.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %conv127.pre-phi.i, ptr %next_rcv.i, align 4
  tail call void @tty_flip_buffer_push(ptr noundef %24) #11
  br label %if.end6

if.end6:                                          ; preds = %recv_interrupt.exit, %if.end.if.end6_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %icom_port) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @icom_write(ptr nocapture noundef readonly %port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 30
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %tail = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tail, align 4
  %statStg = getelementptr inbounds %struct.icom_port, ptr %port, i32 0, i32 9
  %4 = ptrtoint ptr %statStg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %statStg, align 4
  %flags = getelementptr inbounds %struct.xmit_status_area, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %flags, align 2
  %8 = and i16 %7, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not = icmp eq i16 %8, 0
  br i1 %tobool.not, label %while.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %state, align 4
  %head72 = getelementptr inbounds %struct.uart_state, ptr %10, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %head72 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %head72, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %3)
  %cmp.not73.not = icmp eq i32 %12, %3
  br i1 %cmp.not73.not, label %while.cond.preheader.cleanup_crit_edge, label %while.body.lr.ph

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %xmit_buf = getelementptr inbounds %struct.icom_port, ptr %port, i32 0, i32 13
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %13 = phi ptr [ %10, %while.body.lr.ph ], [ %22, %while.body.while.body_crit_edge ]
  %data_count.075 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %while.body.while.body_crit_edge ]
  %temp_tail.074 = phi i32 [ %3, %while.body.lr.ph ], [ %and12, %while.body.while.body_crit_edge ]
  %xmit3 = getelementptr inbounds %struct.uart_state, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %xmit3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %xmit3, align 4
  %arrayidx9 = getelementptr i8, ptr %15, i32 %temp_tail.074
  %16 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx9, align 1
  %18 = ptrtoint ptr %xmit_buf to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %xmit_buf, align 4
  %inc = add nuw nsw i32 %data_count.075, 1
  %arrayidx10 = getelementptr i8, ptr %19, i32 %data_count.075
  %20 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %17, ptr %arrayidx10, align 1
  %inc11 = add i32 %temp_tail.074, 1
  %and12 = and i32 %inc11, 4095
  %21 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %state, align 4
  %head = getelementptr inbounds %struct.uart_state, ptr %22, i32 0, i32 2, i32 1
  %23 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %head, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %and12)
  %cmp.not = icmp ne i32 %24, %and12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %data_count.075)
  %cmp5 = icmp ult i32 %data_count.075, 4096
  %or.cond = select i1 %cmp.not, i1 %cmp5, i1 false
  br i1 %or.cond, label %while.body.while.body_crit_edge, label %if.then14

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

if.then14:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %statStg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %statStg, align 4
  %flags18 = getelementptr inbounds %struct.xmit_status_area, ptr %26, i32 0, i32 6
  %27 = ptrtoint ptr %flags18 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 8, ptr %flags18, align 2
  %conv19 = trunc i32 %inc to i16
  %28 = tail call i16 @llvm.bswap.i16(i16 %conv19)
  %29 = ptrtoint ptr %statStg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %statStg, align 4
  %leLength = getelementptr inbounds %struct.xmit_status_area, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %leLength to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %28, ptr %leLength, align 4
  %statStg_pci = getelementptr inbounds %struct.icom_port, ptr %port, i32 0, i32 10
  %32 = ptrtoint ptr %statStg_pci to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %statStg_pci, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %xmitRestart = getelementptr inbounds %struct.icom_port, ptr %port, i32 0, i32 11
  %35 = ptrtoint ptr %xmitRestart to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %xmitRestart, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %34, ptr %36, align 4
  %dram = getelementptr inbounds %struct.icom_port, ptr %port, i32 0, i32 7
  %38 = ptrtoint ptr %dram to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dram, align 4
  %CmdReg = getelementptr inbounds %struct.func_dram, ptr %39, i32 0, i32 13
  %40 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %CmdReg) #11, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !274
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !275
  tail call void @arm_heavy_mb() #11
  %41 = or i8 %40, -64
  %42 = ptrtoint ptr %dram to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dram, align 4
  %CmdReg31 = getelementptr inbounds %struct.func_dram, ptr %43, i32 0, i32 13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %CmdReg31, i8 %41) #11, !srcloc !276
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !277
  tail call void @arm_heavy_mb() #11
  %44 = ptrtoint ptr %dram to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dram, align 4
  %StartXmitCmd = getelementptr inbounds %struct.func_dram, ptr %45, i32 0, i32 7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %StartXmitCmd, i8 -128) #11, !srcloc !276
  %46 = ptrtoint ptr %dram to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dram, align 4
  %StartXmitCmd39 = getelementptr inbounds %struct.func_dram, ptr %47, i32 0, i32 7
  %48 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %StartXmitCmd39) #11, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !278
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %while.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %inc, %if.then14 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %while.cond.preheader.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_write_wakeup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_insert_flip_string_fixed_flag(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__tty_insert_flip_char(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_handle_dcd_change(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_handle_cts_change(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_port_memory(ptr nocapture noundef %icom_port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.icom_port, ptr %icom_port, i32 0, i32 21
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  %pci_dev = getelementptr inbounds %struct.icom_adapter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pci_dev, align 4
  %recv_buf = getelementptr inbounds %struct.icom_port, ptr %icom_port, i32 0, i32 15
  %4 = ptrtoint ptr %recv_buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %recv_buf, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %recv_buf_pci = getelementptr inbounds %struct.icom_port, ptr %icom_port, i32 0, i32 16
  %6 = ptrtoint ptr %recv_buf_pci to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %recv_buf_pci, align 4
  tail call void @dma_free_attrs(ptr noundef %dev1, i32 noundef 4096, ptr noundef nonnull %5, i32 noundef %7, i32 noundef 0) #11
  %8 = ptrtoint ptr %recv_buf to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %recv_buf, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %xmit_buf = getelementptr inbounds %struct.icom_port, ptr %icom_port, i32 0, i32 13
  %9 = ptrtoint ptr %xmit_buf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %xmit_buf, align 4
  %tobool4.not = icmp eq ptr %10, null
  br i1 %tobool4.not, label %if.end.if.end9_crit_edge, label %if.then5

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev6 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %xmit_buf_pci = getelementptr inbounds %struct.icom_port, ptr %icom_port, i32 0, i32 14
  %11 = ptrtoint ptr %xmit_buf_pci to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %xmit_buf_pci, align 4
  tail call void @dma_free_attrs(ptr noundef %dev6, i32 noundef 4096, ptr noundef nonnull %10, i32 noundef %12, i32 noundef 0) #11
  %13 = ptrtoint ptr %xmit_buf to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %xmit_buf, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.end.if.end9_crit_edge
  %statStg = getelementptr inbounds %struct.icom_port, ptr %icom_port, i32 0, i32 9
  %14 = ptrtoint ptr %statStg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %statStg, align 4
  %tobool10.not = icmp eq ptr %15, null
  br i1 %tobool10.not, label %if.end9.if.end15_crit_edge, label %if.then11

if.end9.if.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %dev12 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %statStg_pci = getelementptr inbounds %struct.icom_port, ptr %icom_port, i32 0, i32 10
  %16 = ptrtoint ptr %statStg_pci to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %statStg_pci, align 4
  tail call void @dma_free_attrs(ptr noundef %dev12, i32 noundef 4096, ptr noundef nonnull %15, i32 noundef %17, i32 noundef 0) #11
  %18 = ptrtoint ptr %statStg to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %statStg, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.end9.if.end15_crit_edge
  %xmitRestart = getelementptr inbounds %struct.icom_port, ptr %icom_port, i32 0, i32 11
  %19 = ptrtoint ptr %xmitRestart to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %xmitRestart, align 4
  %tobool16.not = icmp eq ptr %20, null
  br i1 %tobool16.not, label %if.end15.if.end21_crit_edge, label %if.then17

if.end15.if.end21_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %dev18 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %xmitRestart_pci = getelementptr inbounds %struct.icom_port, ptr %icom_port, i32 0, i32 12
  %21 = ptrtoint ptr %xmitRestart_pci to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %xmitRestart_pci, align 4
  tail call void @dma_free_attrs(ptr noundef %dev18, i32 noundef 4096, ptr noundef nonnull %20, i32 noundef %22, i32 noundef 0) #11
  %23 = ptrtoint ptr %xmitRestart to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %xmitRestart, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %if.end15.if.end21_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @icom_tx_empty(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #11
  %statStg = getelementptr inbounds %struct.icom_port, ptr %port, i32 0, i32 9
  %0 = ptrtoint ptr %statStg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %statStg, align 4
  %flags5 = getelementptr inbounds %struct.xmit_status_area, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %flags5 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags5, align 2
  %4 = lshr i16 %3, 3
  %.lobit = and i16 %4, 1
  %5 = zext i16 %.lobit to i32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call2) #11
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @icom_set_mctrl(ptr nocapture noundef readonly %port, i32 noundef %mctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dram = getelementptr inbounds %struct.icom_port, ptr %port, i32 0, i32 7
  %0 = ptrtoint ptr %dram to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dram, align 4
  %osr = getelementptr inbounds %struct.func_dram, ptr %1, i32 0, i32 33
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %osr) #11, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !279
  %3 = and i8 %2, 63
  %4 = trunc i32 %mctrl to i8
  %5 = shl i8 %4, 4
  %6 = and i8 %5, 64
  %7 = shl i8 %4, 6
  %8 = and i8 %7, -128
  %local_osr.0 = or i8 %8, %6
  %local_osr.1 = or i8 %local_osr.0, %3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !280
  tail call void @arm_heavy_mb() #11
  %9 = ptrtoint ptr %dram to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dram, align 4
  %osr18 = getelementptr inbounds %struct.func_dram, ptr %10, i32 0, i32 33
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %osr18, i8 %local_osr.1) #11, !srcloc !276
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @icom_get_mctrl(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dram = getelementptr inbounds %struct.icom_port, ptr %port, i32 0, i32 7
  %0 = ptrtoint ptr %dram to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dram, align 4
  %isr = getelementptr inbounds %struct.func_dram, ptr %1, i32 0, i32 32
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %isr) #11, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !281
  %conv = zext i8 %2 to i32
  %and = shl nuw nsw i32 %conv, 1
  %3 = and i32 %and, 64
  %and3 = shl nuw nsw i32 %conv, 4
  %4 = and i32 %and3, 128
  %or = or i32 %3, %4
  %5 = and i32 %and, 256
  %or10 = or i32 %or, %5
  %and12 = lshr i32 %conv, 1
  %6 = and i32 %and12, 32
  %or15 = or i32 %or10, %6
  ret i32 %or15
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @icom_stop_tx(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dram = getelementptr inbounds %struct.icom_port, ptr %port, i32 0, i32 7
  %0 = ptrtoint ptr %dram to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dram, align 4
  %CmdReg = getelementptr inbounds %struct.func_dram, ptr %1, i32 0, i32 13
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %CmdReg) #11, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !282
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !283
  tail call void @arm_heavy_mb() #11
  %3 = or i8 %2, 2
  %4 = ptrtoint ptr %dram to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dram, align 4
  %CmdReg4 = getelementptr inbounds %struct.func_dram, ptr %5, i32 0, i32 13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %CmdReg4, i8 %3) #11, !srcloc !276
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @icom_start_tx(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dram = getelementptr inbounds %struct.icom_port, ptr %port, i32 0, i32 7
  %0 = ptrtoint ptr %dram to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dram, align 4
  %CmdReg = getelementptr inbounds %struct.func_dram, ptr %1, i32 0, i32 13
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %CmdReg) #11, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !284
  %3 = and i8 %2, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.not = icmp eq i8 %3, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !285
  tail call void @arm_heavy_mb() #11
  %and4 = and i8 %2, -3
  %4 = ptrtoint ptr %dram to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dram, align 4
  %CmdReg7 = getelementptr inbounds %struct.func_dram, ptr %5, i32 0, i32 13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %CmdReg7, i8 %and4) #11, !srcloc !276
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  %call8 = tail call fastcc i32 @icom_write(ptr noundef %port)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @icom_send_xchar(ptr noundef %port, i8 noundef zeroext %ch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dram = getelementptr inbounds %struct.icom_port, ptr %port, i32 0, i32 7
  br label %do.body2

do.body2:                                         ; preds = %if.end.do.body2_crit_edge, %entry
  %index.038 = phi i32 [ 0, %entry ], [ %inc, %if.end.do.body2_crit_edge ]
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #11
  %0 = ptrtoint ptr %dram to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dram, align 4
  %xchar = getelementptr inbounds %struct.func_dram, ptr %1, i32 0, i32 10
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %xchar) #11, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !286
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp12 = icmp eq i8 %2, 0
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !287
  tail call void @arm_heavy_mb() #11
  %3 = ptrtoint ptr %dram to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dram, align 4
  %xchar18 = getelementptr inbounds %struct.func_dram, ptr %4, i32 0, i32 10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %xchar18, i8 %ch) #11, !srcloc !276
  %5 = ptrtoint ptr %dram to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dram, align 4
  %xchar22 = getelementptr inbounds %struct.func_dram, ptr %6, i32 0, i32 10
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %xchar22) #11, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !288
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call5) #11
  br label %for.end

if.end:                                           ; preds = %do.body2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call5) #11
  tail call void @msleep(i32 noundef 10) #11
  %inc = add nuw nsw i32 %index.038, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %if.end.for.end_crit_edge, label %if.end.do.body2_crit_edge

if.end.do.body2_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @icom_stop_rx(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dram = getelementptr inbounds %struct.icom_port, ptr %port, i32 0, i32 7
  %0 = ptrtoint ptr %dram to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dram, align 4
  %CmdReg = getelementptr inbounds %struct.func_dram, ptr %1, i32 0, i32 13
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %CmdReg) #11, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !290
  tail call void @arm_heavy_mb() #11
  %3 = and i8 %2, 127
  %4 = ptrtoint ptr %dram to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dram, align 4
  %CmdReg4 = getelementptr inbounds %struct.func_dram, ptr %5, i32 0, i32 13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %CmdReg4, i8 %3) #11, !srcloc !276
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @icom_break(ptr noundef %port, i32 noundef %break_state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #11
  %dram = getelementptr inbounds %struct.icom_port, ptr %port, i32 0, i32 7
  %0 = ptrtoint ptr %dram to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dram, align 4
  %CmdReg = getelementptr inbounds %struct.func_dram, ptr %1, i32 0, i32 13
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %CmdReg) #11, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !291
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %break_state)
  %cmp8 = icmp eq i32 %break_state, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  tail call void @arm_heavy_mb() #11
  br i1 %cmp8, label %do.body10, label %do.body17

do.body10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = or i8 %2, 4
  %4 = ptrtoint ptr %dram to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dram, align 4
  %CmdReg16 = getelementptr inbounds %struct.func_dram, ptr %5, i32 0, i32 13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %CmdReg16, i8 %3) #11, !srcloc !276
  br label %if.end

do.body17:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %6 = and i8 %2, -5
  %7 = ptrtoint ptr %dram to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dram, align 4
  %CmdReg23 = getelementptr inbounds %struct.func_dram, ptr %8, i32 0, i32 13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %CmdReg23, i8 %6) #11, !srcloc !276
  br label %if.end

if.end:                                           ; preds = %do.body17, %do.body10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call2) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @icom_open(ptr noundef %port) #2 align 64 {
entry:
  %fw.i.i = alloca ptr, align 4
  %temp_pci.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.icom_port, ptr %port, i32 0, i32 21
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  %kref = getelementptr inbounds %struct.icom_adapter, ptr %1, i32 0, i32 9
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #11
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #11, !srcloc !292
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !293

entry.if.end15.sink.split.i.i.i.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %entry
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !294

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef %.sink.i.i.i.i) #11
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %dram.i = getelementptr inbounds %struct.icom_port, ptr %port, i32 0, i32 7
  %4 = ptrtoint ptr %dram.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dram.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adapter, align 4
  %pci_dev.i = getelementptr inbounds %struct.icom_adapter, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pci_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.71) #14
  br label %if.then

if.end.i:                                         ; preds = %kref_get.exit
  %cable_id2.i = getelementptr inbounds %struct.func_dram, ptr %5, i32 0, i32 38
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %cable_id2.i) #11, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !295
  %11 = and i8 %10, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool8.not.i = icmp eq i8 %11, 0
  br i1 %tobool8.not.i, label %if.end.i.if.then13.i_crit_edge, label %lor.lhs.false.i

if.end.i.if.then13.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %12 = lshr i8 %10, 4
  %cable_id10.i = getelementptr inbounds %struct.icom_port, ptr %port, i32 0, i32 2
  %13 = ptrtoint ptr %cable_id10.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %cable_id10.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %14)
  %cmp.not.i = icmp eq i8 %12, %14
  br i1 %cmp.not.i, label %lor.lhs.false.i.do.body37.i_crit_edge, label %lor.lhs.false.i.if.then13.i_crit_edge

lor.lhs.false.i.if.then13.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i

lor.lhs.false.i.do.body37.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body37.i

if.then13.i:                                      ; preds = %lor.lhs.false.i.if.then13.i_crit_edge, %if.end.i.if.then13.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw.i.i) #11
  %15 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw.i.i, align 4, !annotation !264
  %16 = ptrtoint ptr %dram.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dram.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp_pci.i.i) #11
  %18 = ptrtoint ptr %temp_pci.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %temp_pci.i.i, align 4, !annotation !264
  %19 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %adapter, align 4
  %pci_dev.i.i = getelementptr inbounds %struct.icom_adapter, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %pci_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pci_dev.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !296
  tail call void @arm_heavy_mb() #11
  %int_reg.i.i = getelementptr inbounds %struct.icom_port, ptr %port, i32 0, i32 5
  %23 = ptrtoint ptr %int_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %int_reg.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %24, i16 -193) #11, !srcloc !297
  tail call fastcc void @stop_processor(ptr noundef %port) #11
  tail call void @mmioset(ptr noundef %17, i32 noundef 0, i32 noundef 512) #11
  %dev1.i.i = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  %call.i.i = call i32 @request_firmware(ptr noundef nonnull %fw.i.i, ptr noundef nonnull @.str.78, ptr noundef %dev1.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.end4.i.i, label %if.end.i.i

do.end4.i.i:                                      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.79) #14
  br label %do.body171.i.i

if.end.i.i:                                       ; preds = %if.then13.i
  %25 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fw.i.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2560, i32 %28)
  %cmp6.i.i = icmp ugt i32 %28, 2560
  br i1 %cmp6.i.i, label %do.end10.i.i, label %if.end12.i.i

do.end10.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.82) #14
  %29 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fw.i.i, align 4
  call void @release_firmware(ptr noundef %30) #11
  br label %do.body171.i.i

if.end12.i.i:                                     ; preds = %if.end.i.i
  %31 = ptrtoint ptr %dram.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dram.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %32, i32 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp15255.not.i.i = icmp eq i32 %28, 0
  br i1 %cmp15255.not.i.i, label %if.end12.i.i.for.end.i.i_crit_edge, label %if.end12.i.i.do.body16.i.i_crit_edge

if.end12.i.i.do.body16.i.i_crit_edge:             ; preds = %if.end12.i.i
  br label %do.body16.i.i

if.end12.i.i.for.end.i.i_crit_edge:               ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

do.body16.i.i:                                    ; preds = %do.body16.i.i.do.body16.i.i_crit_edge, %if.end12.i.i.do.body16.i.i_crit_edge
  %index.0256.i.i = phi i32 [ %inc.i.i, %do.body16.i.i.do.body16.i.i_crit_edge ], [ 0, %if.end12.i.i.do.body16.i.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !298
  call void @arm_heavy_mb() #11
  %33 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fw.i.i, align 4
  %data.i.i = getelementptr inbounds %struct.firmware, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data.i.i, align 4
  %arrayidx.i.i = getelementptr i8, ptr %36, i32 %index.0256.i.i
  %37 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.i.i, align 1
  %arrayidx19.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %index.0256.i.i
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %arrayidx19.i.i, i8 %38) #11, !srcloc !276
  %inc.i.i = add nuw i32 %index.0256.i.i, 1
  %39 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %fw.i.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 4
  %cmp15.i.i = icmp ult i32 %inc.i.i, %42
  br i1 %cmp15.i.i, label %do.body16.i.i.do.body16.i.i_crit_edge, label %do.body16.i.i.for.end.i.i_crit_edge

do.body16.i.i.for.end.i.i_crit_edge:              ; preds = %do.body16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

do.body16.i.i.do.body16.i.i_crit_edge:            ; preds = %do.body16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body16.i.i

for.end.i.i:                                      ; preds = %do.body16.i.i.for.end.i.i_crit_edge, %if.end12.i.i.for.end.i.i_crit_edge
  %.lcssa254.i.i = phi ptr [ %26, %if.end12.i.i.for.end.i.i_crit_edge ], [ %40, %do.body16.i.i.for.end.i.i_crit_edge ]
  call void @release_firmware(ptr noundef %.lcssa254.i.i) #11
  %call21.i.i = call i32 @request_firmware(ptr noundef nonnull %fw.i.i, ptr noundef nonnull @.str.84, ptr noundef %dev1.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i.i)
  %cmp22.i.i = icmp slt i32 %call21.i.i, 0
  br i1 %cmp22.i.i, label %do.end26.i.i, label %if.end28.i.i

do.end26.i.i:                                     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.86) #14
  br label %do.body171.i.i

if.end28.i.i:                                     ; preds = %for.end.i.i
  %43 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %fw.i.i, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3072, i32 %46)
  %cmp30.i.i = icmp ugt i32 %46, 3072
  br i1 %cmp30.i.i, label %do.end34.i.i, label %if.end36.i.i

do.end34.i.i:                                     ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.89) #14
  %47 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %fw.i.i, align 4
  call void @release_firmware(ptr noundef %48) #11
  br label %do.body171.i.i

if.end36.i.i:                                     ; preds = %if.end28.i.i
  %49 = ptrtoint ptr %dram.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dram.i, align 4
  %add.ptr38.i.i = getelementptr i8, ptr %50, i32 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 2560, i32 %46)
  %cmp41257.i.i = icmp ugt i32 %46, 2560
  br i1 %cmp41257.i.i, label %if.end36.i.i.do.body43.i.i_crit_edge, label %if.end36.i.i.for.end51.i.i_crit_edge

if.end36.i.i.for.end51.i.i_crit_edge:             ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end51.i.i

if.end36.i.i.do.body43.i.i_crit_edge:             ; preds = %if.end36.i.i
  br label %do.body43.i.i

do.body43.i.i:                                    ; preds = %do.body43.i.i.do.body43.i.i_crit_edge, %if.end36.i.i.do.body43.i.i_crit_edge
  %index.1258.i.i = phi i32 [ %inc50.i.i, %do.body43.i.i.do.body43.i.i_crit_edge ], [ 2560, %if.end36.i.i.do.body43.i.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !299
  call void @arm_heavy_mb() #11
  %51 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %fw.i.i, align 4
  %data46.i.i = getelementptr inbounds %struct.firmware, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %data46.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %data46.i.i, align 4
  %arrayidx47.i.i = getelementptr i8, ptr %54, i32 %index.1258.i.i
  %55 = ptrtoint ptr %arrayidx47.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx47.i.i, align 1
  %arrayidx48.i.i = getelementptr i8, ptr %add.ptr38.i.i, i32 %index.1258.i.i
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %arrayidx48.i.i, i8 %56) #11, !srcloc !276
  %inc50.i.i = add nuw i32 %index.1258.i.i, 1
  %57 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %fw.i.i, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %58, align 4
  %cmp41.i.i = icmp ult i32 %inc50.i.i, %60
  br i1 %cmp41.i.i, label %do.body43.i.i.do.body43.i.i_crit_edge, label %do.body43.i.i.for.end51.i.i_crit_edge

do.body43.i.i.for.end51.i.i_crit_edge:            ; preds = %do.body43.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end51.i.i

do.body43.i.i.do.body43.i.i_crit_edge:            ; preds = %do.body43.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body43.i.i

for.end51.i.i:                                    ; preds = %do.body43.i.i.for.end51.i.i_crit_edge, %if.end36.i.i.for.end51.i.i_crit_edge
  %.lcssa.i.i = phi ptr [ %44, %if.end36.i.i.for.end51.i.i_crit_edge ], [ %58, %do.body43.i.i.for.end51.i.i_crit_edge ]
  call void @release_firmware(ptr noundef %.lcssa.i.i) #11
  %61 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %adapter, align 4
  %version.i.i = getelementptr inbounds %struct.icom_adapter, ptr %62, i32 0, i32 5
  %63 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %version.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %64)
  %cmp53.i.i = icmp eq i32 %64, 2
  br i1 %cmp53.i.i, label %do.body55.i.i, label %for.end51.i.i.if.end59.i.i_crit_edge

for.end51.i.i.if.end59.i.i_crit_edge:             ; preds = %for.end51.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59.i.i

do.body55.i.i:                                    ; preds = %for.end51.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !300
  call void @arm_heavy_mb() #11
  %65 = ptrtoint ptr %dram.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dram.i, align 4
  %misc_flags.i.i = getelementptr inbounds %struct.func_dram, ptr %66, i32 0, i32 18
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %misc_flags.i.i, i8 64) #11, !srcloc !276
  br label %if.end59.i.i

if.end59.i.i:                                     ; preds = %do.body55.i.i, %for.end51.i.i.if.end59.i.i_crit_edge
  %call2.i.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @icom_lock) #11
  %port5.i.i.i = getelementptr inbounds %struct.icom_port, ptr %port, i32 0, i32 8
  %67 = ptrtoint ptr %port5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %port5.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %68)
  %cmp6.i.i.i = icmp ugt i32 %68, 3
  br i1 %cmp6.i.i.i, label %do.end10.i.i.i, label %if.end.i.i.i

do.end10.i.i.i:                                   ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %69 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %adapter, align 4
  %pci_dev.i.i.i = getelementptr inbounds %struct.icom_adapter, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %pci_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pci_dev.i.i.i, align 4
  %dev.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %72, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.75) #14
  br label %start_processor.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %68)
  %switch.i.i.i = icmp ult i32 %68, 2
  %global_reg.i.i.i = getelementptr inbounds %struct.icom_port, ptr %port, i32 0, i32 6
  %73 = ptrtoint ptr %global_reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %global_reg.i.i.i, align 4
  %control_2.i.i.i = getelementptr inbounds %struct.icom_regs, ptr %74, i32 0, i32 8
  %control_2.sink.i.i.i = select i1 %switch.i.i.i, ptr %74, ptr %control_2.i.i.i
  %75 = getelementptr [4 x %struct.lookup_proc_table], ptr @start_proc, i32 0, i32 %68
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %control_2.sink.i.i.i, ptr %75, align 4
  %77 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %control_2.sink.i.i.i) #11, !srcloc !265
  %78 = call i32 @llvm.bswap.i32(i32 %77) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !301
  %processor_id.i.i.i = getelementptr [4 x %struct.lookup_proc_table], ptr @stop_proc, i32 0, i32 %68, i32 1
  %79 = ptrtoint ptr %processor_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %processor_id.i.i.i, align 4
  %neg.i.i.i = xor i32 %80, -1
  %and.i.i.i = and i32 %78, %neg.i.i.i
  %processor_id27.i.i.i = getelementptr [4 x %struct.lookup_proc_table], ptr @start_proc, i32 0, i32 %68, i32 1
  %81 = ptrtoint ptr %processor_id27.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %processor_id27.i.i.i, align 4
  %or.i.i.i = or i32 %and.i.i.i, %82
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !302
  call void @arm_heavy_mb() #11
  %83 = call i32 @llvm.bswap.i32(i32 %or.i.i.i) #11
  %84 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %75, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %85, i32 %83) #11, !srcloc !270
  %86 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %75, align 4
  %88 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %87) #11, !srcloc !265
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !303
  br label %start_processor.exit.i.i

start_processor.exit.i.i:                         ; preds = %if.end.i.i.i, %do.end10.i.i.i
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @icom_lock, i32 noundef %call2.i.i.i) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !304
  call void @arm_heavy_mb() #11
  %89 = ptrtoint ptr %dram.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dram.i, align 4
  %HDLCConfigReg.i.i = getelementptr inbounds %struct.func_dram, ptr %90, i32 0, i32 8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %HDLCConfigReg.i.i, i8 2) #11, !srcloc !276
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !305
  call void @arm_heavy_mb() #11
  %91 = ptrtoint ptr %dram.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dram.i, align 4
  %FlagFillIdleTimer.i.i = getelementptr inbounds %struct.func_dram, ptr %92, i32 0, i32 5
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %FlagFillIdleTimer.i.i, i8 4) #11, !srcloc !276
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !306
  call void @arm_heavy_mb() #11
  %93 = ptrtoint ptr %dram.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dram.i, align 4
  %CmdReg.i.i = getelementptr inbounds %struct.func_dram, ptr %94, i32 0, i32 13
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %CmdReg.i.i, i8 0) #11, !srcloc !276
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !307
  call void @arm_heavy_mb() #11
  %95 = ptrtoint ptr %dram.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dram.i, align 4
  %async_config3.i.i = getelementptr inbounds %struct.func_dram, ptr %96, i32 0, i32 15
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %async_config3.i.i, i8 16) #11, !srcloc !276
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !308
  call void @arm_heavy_mb() #11
  %97 = ptrtoint ptr %dram.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dram.i, align 4
  %async_config2.i.i = getelementptr inbounds %struct.func_dram, ptr %98, i32 0, i32 14
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %async_config2.i.i, i8 32) #11, !srcloc !276
  %call.i.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev1.i.i, i32 noundef 4096, ptr noundef nonnull %temp_pci.i.i, i32 noundef 3264, i32 noundef 0) #11
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %do.end85.i.i, label %if.end87.i.i

do.end85.i.i:                                     ; preds = %start_processor.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.92) #14
  br label %do.body171.i.i

if.end87.i.i:                                     ; preds = %start_processor.exit.i.i
  %call89.i.i = call i32 @request_firmware(ptr noundef nonnull %fw.i.i, ptr noundef nonnull @.str.94, ptr noundef %dev1.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89.i.i)
  %cmp90.i.i = icmp slt i32 %call89.i.i, 0
  br i1 %cmp90.i.i, label %do.end94.i.i, label %if.end96.i.i

do.end94.i.i:                                     ; preds = %if.end87.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.96) #14
  br label %do.body171.i.i

if.end96.i.i:                                     ; preds = %if.end87.i.i
  %99 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %fw.i.i, align 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %100, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2560, i32 %102)
  %cmp98.i.i = icmp ugt i32 %102, 2560
  br i1 %cmp98.i.i, label %do.end102.i.i, label %for.cond105.preheader.i.i

for.cond105.preheader.i.i:                        ; preds = %if.end96.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %cmp107260.not.i.i = icmp eq i32 %102, 0
  br i1 %cmp107260.not.i.i, label %for.cond105.preheader.i.i.do.body115.i.i_crit_edge, label %for.cond105.preheader.i.i.for.body108.i.i_crit_edge

for.cond105.preheader.i.i.for.body108.i.i_crit_edge: ; preds = %for.cond105.preheader.i.i
  br label %for.body108.i.i

for.cond105.preheader.i.i.do.body115.i.i_crit_edge: ; preds = %for.cond105.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body115.i.i

do.end102.i.i:                                    ; preds = %if.end96.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.99) #14
  %103 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %fw.i.i, align 4
  call void @release_firmware(ptr noundef %104) #11
  br label %do.body171.i.i

for.body108.i.i:                                  ; preds = %for.body108.i.i.for.body108.i.i_crit_edge, %for.cond105.preheader.i.i.for.body108.i.i_crit_edge
  %105 = phi ptr [ %112, %for.body108.i.i.for.body108.i.i_crit_edge ], [ %100, %for.cond105.preheader.i.i.for.body108.i.i_crit_edge ]
  %index.2261.i.i = phi i32 [ %inc113.i.i, %for.body108.i.i.for.body108.i.i_crit_edge ], [ 0, %for.cond105.preheader.i.i.for.body108.i.i_crit_edge ]
  %data109.i.i = getelementptr inbounds %struct.firmware, ptr %105, i32 0, i32 1
  %106 = ptrtoint ptr %data109.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %data109.i.i, align 4
  %arrayidx110.i.i = getelementptr i8, ptr %107, i32 %index.2261.i.i
  %108 = ptrtoint ptr %arrayidx110.i.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx110.i.i, align 1
  %arrayidx111.i.i = getelementptr i8, ptr %call.i.i.i, i32 %index.2261.i.i
  %110 = ptrtoint ptr %arrayidx111.i.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %109, ptr %arrayidx111.i.i, align 1
  %inc113.i.i = add nuw i32 %index.2261.i.i, 1
  %111 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %fw.i.i, align 4
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %112, align 4
  %cmp107.i.i = icmp ult i32 %inc113.i.i, %114
  br i1 %cmp107.i.i, label %for.body108.i.i.for.body108.i.i_crit_edge, label %for.body108.i.i.do.body115.i.i_crit_edge

for.body108.i.i.do.body115.i.i_crit_edge:         ; preds = %for.body108.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body115.i.i

for.body108.i.i.for.body108.i.i_crit_edge:        ; preds = %for.body108.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body108.i.i

do.body115.i.i:                                   ; preds = %for.body108.i.i.do.body115.i.i_crit_edge, %for.cond105.preheader.i.i.do.body115.i.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !309
  call void @arm_heavy_mb() #11
  %115 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %fw.i.i, align 4
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %116, align 4
  %add.i.i = add i32 %118, 16
  %div248.i.i = lshr i32 %add.i.i, 4
  %conv.i.i = trunc i32 %div248.i.i to i8
  %119 = ptrtoint ptr %dram.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %dram.i, align 4
  %mac_length.i.i = getelementptr inbounds %struct.func_dram, ptr %120, i32 0, i32 40
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %mac_length.i.i, i8 %conv.i.i) #11, !srcloc !276
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !310
  call void @arm_heavy_mb() #11
  %121 = ptrtoint ptr %temp_pci.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %temp_pci.i.i, align 4
  %123 = call i32 @llvm.bswap.i32(i32 %122) #11
  %124 = ptrtoint ptr %dram.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %dram.i, align 4
  %mac_load_addr.i.i = getelementptr inbounds %struct.func_dram, ptr %125, i32 0, i32 42
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mac_load_addr.i.i, i32 %123) #11, !srcloc !270
  %126 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %fw.i.i, align 4
  call void @release_firmware(ptr noundef %127) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !311
  call void @arm_heavy_mb() #11
  %128 = ptrtoint ptr %dram.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %dram.i, align 4
  %sync.i.i = getelementptr inbounds %struct.func_dram, ptr %129, i32 0, i32 36
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %sync.i.i, i8 -128) #11, !srcloc !276
  call void @msleep(i32 noundef 100) #11
  %130 = ptrtoint ptr %dram.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %dram.i, align 4
  %misc_flags133.i.i = getelementptr inbounds %struct.func_dram, ptr %131, i32 0, i32 18
  %132 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %misc_flags133.i.i) #11, !srcloc !267
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !312
  %133 = and i8 %132, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %tobool137.not.i.i = icmp eq i8 %133, 0
  br i1 %tobool137.not.i.i, label %for.inc140.i.i, label %do.body115.i.i.for.end142.i.i_crit_edge

do.body115.i.i.for.end142.i.i_crit_edge:          ; preds = %do.body115.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end142.i.i

for.inc140.i.i:                                   ; preds = %do.body115.i.i
  call void @msleep(i32 noundef 100) #11
  %134 = ptrtoint ptr %dram.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %dram.i, align 4
  %misc_flags133.1.i.i = getelementptr inbounds %struct.func_dram, ptr %135, i32 0, i32 18
  %136 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %misc_flags133.1.i.i) #11, !srcloc !267
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !312
  %137 = and i8 %136, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %tobool137.not.1.i.i = icmp eq i8 %137, 0
  br i1 %tobool137.not.1.i.i, label %for.inc140.1.i.i, label %for.inc140.i.i.for.end142.i.i_crit_edge

for.inc140.i.i.for.end142.i.i_crit_edge:          ; preds = %for.inc140.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end142.i.i

for.inc140.1.i.i:                                 ; preds = %for.inc140.i.i
  call void @msleep(i32 noundef 100) #11
  %138 = ptrtoint ptr %dram.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %dram.i, align 4
  %misc_flags133.2.i.i = getelementptr inbounds %struct.func_dram, ptr %139, i32 0, i32 18
  %140 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %misc_flags133.2.i.i) #11, !srcloc !267
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !312
  %141 = and i8 %140, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %141)
  %tobool137.not.2.i.i = icmp eq i8 %141, 0
  br i1 %tobool137.not.2.i.i, label %for.inc140.2.i.i, label %for.inc140.1.i.i.for.end142.i.i_crit_edge

for.inc140.1.i.i.for.end142.i.i_crit_edge:        ; preds = %for.inc140.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end142.i.i

for.inc140.2.i.i:                                 ; preds = %for.inc140.1.i.i
  call void @msleep(i32 noundef 100) #11
  %142 = ptrtoint ptr %dram.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %dram.i, align 4
  %misc_flags133.3.i.i = getelementptr inbounds %struct.func_dram, ptr %143, i32 0, i32 18
  %144 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %misc_flags133.3.i.i) #11, !srcloc !267
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !312
  %145 = and i8 %144, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %145)
  %tobool137.not.3.i.i = icmp eq i8 %145, 0
  br i1 %tobool137.not.3.i.i, label %for.inc140.3.i.i, label %for.inc140.2.i.i.for.end142.i.i_crit_edge

for.inc140.2.i.i.for.end142.i.i_crit_edge:        ; preds = %for.inc140.2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end142.i.i

for.inc140.3.i.i:                                 ; preds = %for.inc140.2.i.i
  call void @msleep(i32 noundef 100) #11
  %146 = ptrtoint ptr %dram.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %dram.i, align 4
  %misc_flags133.4.i.i = getelementptr inbounds %struct.func_dram, ptr %147, i32 0, i32 18
  %148 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %misc_flags133.4.i.i) #11, !srcloc !267
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !312
  %149 = and i8 %148, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %149)
  %tobool137.not.4.i.i = icmp eq i8 %149, 0
  br i1 %tobool137.not.4.i.i, label %for.inc140.4.i.i, label %for.inc140.3.i.i.for.end142.i.i_crit_edge

for.inc140.3.i.i.for.end142.i.i_crit_edge:        ; preds = %for.inc140.3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end142.i.i

for.inc140.4.i.i:                                 ; preds = %for.inc140.3.i.i
  call void @msleep(i32 noundef 100) #11
  %150 = ptrtoint ptr %dram.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %dram.i, align 4
  %misc_flags133.5.i.i = getelementptr inbounds %struct.func_dram, ptr %151, i32 0, i32 18
  %152 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %misc_flags133.5.i.i) #11, !srcloc !267
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !312
  %153 = and i8 %152, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %153)
  %tobool137.not.5.i.i = icmp eq i8 %153, 0
  br i1 %tobool137.not.5.i.i, label %for.inc140.5.i.i, label %for.inc140.4.i.i.for.end142.i.i_crit_edge

for.inc140.4.i.i.for.end142.i.i_crit_edge:        ; preds = %for.inc140.4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end142.i.i

for.inc140.5.i.i:                                 ; preds = %for.inc140.4.i.i
  call void @msleep(i32 noundef 100) #11
  %154 = ptrtoint ptr %dram.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %dram.i, align 4
  %misc_flags133.6.i.i = getelementptr inbounds %struct.func_dram, ptr %155, i32 0, i32 18
  %156 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %misc_flags133.6.i.i) #11, !srcloc !267
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !312
  %157 = and i8 %156, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %157)
  %tobool137.not.6.i.i = icmp eq i8 %157, 0
  br i1 %tobool137.not.6.i.i, label %for.inc140.6.i.i, label %for.inc140.5.i.i.for.end142.i.i_crit_edge

for.inc140.5.i.i.for.end142.i.i_crit_edge:        ; preds = %for.inc140.5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end142.i.i

for.inc140.6.i.i:                                 ; preds = %for.inc140.5.i.i
  call void @msleep(i32 noundef 100) #11
  %158 = ptrtoint ptr %dram.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %dram.i, align 4
  %misc_flags133.7.i.i = getelementptr inbounds %struct.func_dram, ptr %159, i32 0, i32 18
  %160 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %misc_flags133.7.i.i) #11, !srcloc !267
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !312
  %161 = and i8 %160, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %161)
  %tobool137.not.7.i.i = icmp eq i8 %161, 0
  br i1 %tobool137.not.7.i.i, label %for.inc140.7.i.i, label %for.inc140.6.i.i.for.end142.i.i_crit_edge

for.inc140.6.i.i.for.end142.i.i_crit_edge:        ; preds = %for.inc140.6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end142.i.i

for.inc140.7.i.i:                                 ; preds = %for.inc140.6.i.i
  call void @msleep(i32 noundef 100) #11
  %162 = ptrtoint ptr %dram.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %dram.i, align 4
  %misc_flags133.8.i.i = getelementptr inbounds %struct.func_dram, ptr %163, i32 0, i32 18
  %164 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %misc_flags133.8.i.i) #11, !srcloc !267
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !312
  %165 = and i8 %164, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %165)
  %tobool137.not.8.i.i = icmp eq i8 %165, 0
  br i1 %tobool137.not.8.i.i, label %for.inc140.8.i.i, label %for.inc140.7.i.i.for.end142.i.i_crit_edge

for.inc140.7.i.i.for.end142.i.i_crit_edge:        ; preds = %for.inc140.7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end142.i.i

for.inc140.8.i.i:                                 ; preds = %for.inc140.7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @msleep(i32 noundef 100) #11
  %166 = ptrtoint ptr %dram.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %dram.i, align 4
  %misc_flags133.9.i.i = getelementptr inbounds %struct.func_dram, ptr %167, i32 0, i32 18
  %168 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %misc_flags133.9.i.i) #11, !srcloc !267
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !312
  %169 = and i8 %168, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %169)
  %tobool137.not.9.i.i = icmp eq i8 %169, 0
  br label %for.end142.i.i

for.end142.i.i:                                   ; preds = %for.inc140.8.i.i, %for.inc140.7.i.i.for.end142.i.i_crit_edge, %for.inc140.6.i.i.for.end142.i.i_crit_edge, %for.inc140.5.i.i.for.end142.i.i_crit_edge, %for.inc140.4.i.i.for.end142.i.i_crit_edge, %for.inc140.3.i.i.for.end142.i.i_crit_edge, %for.inc140.2.i.i.for.end142.i.i_crit_edge, %for.inc140.1.i.i.for.end142.i.i_crit_edge, %for.inc140.i.i.for.end142.i.i_crit_edge, %do.body115.i.i.for.end142.i.i_crit_edge
  %cmp143.not.i.i = phi i1 [ false, %for.inc140.7.i.i.for.end142.i.i_crit_edge ], [ false, %for.inc140.6.i.i.for.end142.i.i_crit_edge ], [ false, %for.inc140.5.i.i.for.end142.i.i_crit_edge ], [ false, %for.inc140.4.i.i.for.end142.i.i_crit_edge ], [ false, %for.inc140.3.i.i.for.end142.i.i_crit_edge ], [ false, %for.inc140.2.i.i.for.end142.i.i_crit_edge ], [ false, %for.inc140.1.i.i.for.end142.i.i_crit_edge ], [ false, %for.inc140.i.i.for.end142.i.i_crit_edge ], [ false, %do.body115.i.i.for.end142.i.i_crit_edge ], [ %tobool137.not.9.i.i, %for.inc140.8.i.i ]
  %170 = ptrtoint ptr %dram.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %dram.i, align 4
  %cable_id150.i.i = getelementptr inbounds %struct.func_dram, ptr %171, i32 0, i32 38
  %172 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %cable_id150.i.i) #11, !srcloc !267
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !313
  %173 = and i8 %172, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %173)
  %tobool156.not.i.i = icmp eq i8 %173, 0
  br i1 %tobool156.not.i.i, label %do.end164.i.i, label %if.then157.i.i

if.then157.i.i:                                   ; preds = %for.end142.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %174 = lshr i8 %172, 4
  br label %load_code_exit.i.i

do.end164.i.i:                                    ; preds = %for.end142.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.102) #14
  br label %load_code_exit.i.i

load_code_exit.i.i:                               ; preds = %do.end164.i.i, %if.then157.i.i
  %.sink.i.i = phi i8 [ 0, %do.end164.i.i ], [ %174, %if.then157.i.i ]
  %175 = getelementptr inbounds %struct.icom_port, ptr %port, i32 0, i32 2
  %176 = ptrtoint ptr %175 to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 %.sink.i.i, ptr %175, align 1
  br i1 %cmp143.not.i.i, label %load_code_exit.i.i.do.body171.i.i_crit_edge, label %load_code_exit.i.i.if.end185.i.i_crit_edge

load_code_exit.i.i.if.end185.i.i_crit_edge:       ; preds = %load_code_exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end185.i.i

load_code_exit.i.i.do.body171.i.i_crit_edge:      ; preds = %load_code_exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body171.i.i

do.body171.i.i:                                   ; preds = %load_code_exit.i.i.do.body171.i.i_crit_edge, %do.end102.i.i, %do.end94.i.i, %do.end85.i.i, %do.end34.i.i, %do.end26.i.i, %do.end10.i.i, %do.end4.i.i
  %new_page.0252.i.i = phi ptr [ %call.i.i.i, %load_code_exit.i.i.do.body171.i.i_crit_edge ], [ null, %do.end85.i.i ], [ %call.i.i.i, %do.end102.i.i ], [ %call.i.i.i, %do.end94.i.i ], [ null, %do.end34.i.i ], [ null, %do.end26.i.i ], [ null, %do.end10.i.i ], [ null, %do.end4.i.i ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !314
  call void @arm_heavy_mb() #11
  %177 = ptrtoint ptr %int_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %int_reg.i.i, align 4
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %178, i16 -193) #11, !srcloc !297
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !315
  call void @arm_heavy_mb() #11
  %179 = ptrtoint ptr %dram.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %dram.i, align 4
  %disable.i.i = getelementptr inbounds %struct.func_dram, ptr %180, i32 0, i32 35
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %disable.i.i, i8 -128) #11, !srcloc !276
  call fastcc void @stop_processor(ptr noundef %port) #11
  %181 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %adapter, align 4
  %pci_dev183.i.i = getelementptr inbounds %struct.icom_adapter, ptr %182, i32 0, i32 2
  %183 = ptrtoint ptr %pci_dev183.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %pci_dev183.i.i, align 4
  %dev184.i.i = getelementptr inbounds %struct.pci_dev, ptr %184, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev184.i.i, ptr noundef nonnull @.str.105) #14
  br label %if.end185.i.i

if.end185.i.i:                                    ; preds = %do.body171.i.i, %load_code_exit.i.i.if.end185.i.i_crit_edge
  %new_page.0253.i.i = phi ptr [ %new_page.0252.i.i, %do.body171.i.i ], [ %call.i.i.i, %load_code_exit.i.i.if.end185.i.i_crit_edge ]
  %cmp186.not.i.i = icmp eq ptr %new_page.0253.i.i, null
  br i1 %cmp186.not.i.i, label %if.end185.i.i.load_code.exit.i_crit_edge, label %if.then188.i.i

if.end185.i.i.load_code.exit.i_crit_edge:         ; preds = %if.end185.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %load_code.exit.i

if.then188.i.i:                                   ; preds = %if.end185.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %185 = ptrtoint ptr %temp_pci.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %temp_pci.i.i, align 4
  call void @dma_free_attrs(ptr noundef %dev1.i.i, i32 noundef 4096, ptr noundef nonnull %new_page.0253.i.i, i32 noundef %186, i32 noundef 0) #11
  br label %load_code.exit.i

load_code.exit.i:                                 ; preds = %if.then188.i.i, %if.end185.i.i.load_code.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp_pci.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i.i) #11
  %187 = ptrtoint ptr %dram.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %dram.i, align 4
  %cable_id17.i = getelementptr inbounds %struct.func_dram, ptr %188, i32 0, i32 38
  %189 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %cable_id17.i) #11, !srcloc !267
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !316
  %190 = and i8 %189, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %190)
  %tobool27.not.i = icmp eq i8 %190, 0
  br i1 %tobool27.not.i, label %load_code.exit.i.if.then_crit_edge, label %lor.lhs.false28.i

load_code.exit.i.if.then_crit_edge:               ; preds = %load_code.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false28.i:                                ; preds = %load_code.exit.i
  %cable_id29.i = getelementptr inbounds %struct.icom_port, ptr %port, i32 0, i32 2
  %191 = ptrtoint ptr %cable_id29.i to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %cable_id29.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %192)
  %cmp31.i = icmp eq i8 %192, 0
  br i1 %cmp31.i, label %lor.lhs.false28.i.if.then_crit_edge, label %lor.lhs.false28.i.do.body37.i_crit_edge

lor.lhs.false28.i.do.body37.i_crit_edge:          ; preds = %lor.lhs.false28.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body37.i

lor.lhs.false28.i.if.then_crit_edge:              ; preds = %lor.lhs.false28.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

do.body37.i:                                      ; preds = %lor.lhs.false28.i.do.body37.i_crit_edge, %lor.lhs.false.i.do.body37.i_crit_edge
  %call42.i = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @icom_lock) #11
  %port47.i = getelementptr inbounds %struct.icom_port, ptr %port, i32 0, i32 8
  %193 = ptrtoint ptr %port47.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %port47.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %194)
  %cmp48.i = icmp ugt i32 %194, 3
  br i1 %cmp48.i, label %do.end53.i, label %if.end57.i

do.end53.i:                                       ; preds = %do.body37.i
  call void @__sanitizer_cov_trace_pc() #13
  %195 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %adapter, align 4
  %pci_dev55.i = getelementptr inbounds %struct.icom_adapter, ptr %196, i32 0, i32 2
  %197 = ptrtoint ptr %pci_dev55.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %pci_dev55.i, align 4
  %dev56.i = getelementptr inbounds %struct.pci_dev, ptr %198, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev56.i, ptr noundef nonnull @.str.75) #14
  br label %startup.exit

if.end57.i:                                       ; preds = %do.body37.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %194)
  %switch.i = icmp ult i32 %194, 2
  %global_reg.i = getelementptr inbounds %struct.icom_port, ptr %port, i32 0, i32 6
  %199 = ptrtoint ptr %global_reg.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %global_reg.i, align 4
  %int_mask.i = getelementptr inbounds %struct.icom_regs, ptr %200, i32 0, i32 2
  %int_mask_2.i = getelementptr inbounds %struct.icom_regs, ptr %200, i32 0, i32 10
  %int_mask_2.sink.i = select i1 %switch.i, ptr %int_mask.i, ptr %int_mask_2.i
  %201 = getelementptr [4 x %struct.lookup_int_table], ptr @int_mask_tbl, i32 0, i32 %194
  %202 = ptrtoint ptr %201 to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr %int_mask_2.sink.i, ptr %201, align 4
  %203 = zext i32 %194 to i64
  call void @__sanitizer_cov_trace_switch(i64 %203, ptr @__sancov_gen_cov_switch_values.122)
  switch i32 %194, label %do.body78.i [
    i32 2, label %if.end57.i.do.body74.i_crit_edge
    i32 0, label %if.end57.i.do.body74.i_crit_edge18
  ]

if.end57.i.do.body74.i_crit_edge18:               ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body74.i

if.end57.i.do.body74.i_crit_edge:                 ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body74.i

do.body74.i:                                      ; preds = %if.end57.i.do.body74.i_crit_edge, %if.end57.i.do.body74.i_crit_edge18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !317
  call void @arm_heavy_mb() #11
  %int_reg.i = getelementptr inbounds %struct.icom_port, ptr %port, i32 0, i32 5
  %204 = ptrtoint ptr %int_reg.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %int_reg.i, align 4
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %205, i16 -256) #11, !srcloc !297
  br label %if.end82.i

do.body78.i:                                      ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !318
  call void @arm_heavy_mb() #11
  %int_reg81.i = getelementptr inbounds %struct.icom_port, ptr %port, i32 0, i32 5
  %206 = ptrtoint ptr %int_reg81.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %int_reg81.i, align 4
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %207, i16 63) #11, !srcloc !297
  br label %if.end82.i

if.end82.i:                                       ; preds = %do.body78.i, %do.body74.i
  %208 = ptrtoint ptr %201 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %201, align 4
  %210 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %209) #11, !srcloc !265
  %211 = call i32 @llvm.bswap.i32(i32 %210) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !319
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !320
  call void @arm_heavy_mb() #11
  %processor_id.i = getelementptr [4 x %struct.lookup_int_table], ptr @int_mask_tbl, i32 0, i32 %194, i32 1
  %212 = ptrtoint ptr %processor_id.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %processor_id.i, align 4
  %neg.i = xor i32 %213, -1
  %and94.i = and i32 %211, %neg.i
  %214 = call i32 @llvm.bswap.i32(i32 %and94.i) #11
  %215 = ptrtoint ptr %201 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %201, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %216, i32 %214) #11, !srcloc !270
  %217 = ptrtoint ptr %201 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %201, align 4
  %219 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %218) #11, !srcloc !265
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !321
  br label %startup.exit

startup.exit:                                     ; preds = %if.end82.i, %do.end53.i
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @icom_lock, i32 noundef %call42.i) #11
  br label %cleanup

if.then:                                          ; preds = %lor.lhs.false28.i.if.then_crit_edge, %load_code.exit.i.if.then_crit_edge, %do.end.i
  %retval.0.i.ph = phi i32 [ -5, %load_code.exit.i.if.then_crit_edge ], [ -5, %lor.lhs.false28.i.if.then_crit_edge ], [ -19, %do.end.i ]
  %220 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %adapter, align 4
  %kref3 = getelementptr inbounds %struct.icom_adapter, ptr %221, i32 0, i32 9
  call fastcc void @kref_put(ptr noundef %kref3)
  br label %cleanup

cleanup:                                          ; preds = %if.then, %startup.exit
  %retval.0 = phi i32 [ %retval.0.i.ph, %if.then ], [ 0, %startup.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @icom_close(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dram = getelementptr inbounds %struct.icom_port, ptr %port, i32 0, i32 7
  %0 = ptrtoint ptr %dram to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dram, align 4
  %CmdReg = getelementptr inbounds %struct.func_dram, ptr %1, i32 0, i32 13
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %CmdReg) #11, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !322
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !323
  tail call void @arm_heavy_mb() #11
  %3 = and i8 %2, 127
  %4 = ptrtoint ptr %dram to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dram, align 4
  %CmdReg4 = getelementptr inbounds %struct.func_dram, ptr %5, i32 0, i32 13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %CmdReg4, i8 %3) #11, !srcloc !276
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @icom_lock) #11
  %port5.i = getelementptr inbounds %struct.icom_port, ptr %port, i32 0, i32 8
  %6 = ptrtoint ptr %port5.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp6.i = icmp ugt i32 %7, 3
  br i1 %cmp6.i, label %do.end10.i, label %if.end.i

do.end10.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %adapter.i = getelementptr inbounds %struct.icom_port, ptr %port, i32 0, i32 21
  %8 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adapter.i, align 4
  %pci_dev.i = getelementptr inbounds %struct.icom_adapter, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pci_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.75) #14
  br label %unlock.i

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %switch.i = icmp ult i32 %7, 2
  %global_reg.i = getelementptr inbounds %struct.icom_port, ptr %port, i32 0, i32 6
  %12 = ptrtoint ptr %global_reg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %global_reg.i, align 4
  %int_mask.i = getelementptr inbounds %struct.icom_regs, ptr %13, i32 0, i32 2
  %int_mask_2.i = getelementptr inbounds %struct.icom_regs, ptr %13, i32 0, i32 10
  %int_mask_2.sink.i = select i1 %switch.i, ptr %int_mask.i, ptr %int_mask_2.i
  %14 = getelementptr [4 x %struct.lookup_int_table], ptr @int_mask_tbl, i32 0, i32 %7
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %int_mask_2.sink.i, ptr %14, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %int_mask_2.sink.i) #11, !srcloc !265
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !324
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !325
  tail call void @arm_heavy_mb() #11
  %processor_id.i = getelementptr [4 x %struct.lookup_int_table], ptr @int_mask_tbl, i32 0, i32 %7, i32 1
  %18 = ptrtoint ptr %processor_id.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %processor_id.i, align 4
  %or.i = or i32 %19, %17
  %20 = tail call i32 @llvm.bswap.i32(i32 %or.i) #11
  %21 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %14, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #11, !srcloc !270
  %23 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %14, align 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #11, !srcloc !265
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !326
  br label %unlock.i

unlock.i:                                         ; preds = %if.end.i, %do.end10.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @icom_lock, i32 noundef %call2.i) #11
  %26 = ptrtoint ptr %dram to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dram, align 4
  %CmdReg.i = getelementptr inbounds %struct.func_dram, ptr %27, i32 0, i32 13
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %CmdReg.i) #11, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !327
  %29 = and i8 %28, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i = icmp eq i8 %29, 0
  br i1 %tobool.not.i, label %unlock.i.shutdown.exit_crit_edge, label %do.body45.i

unlock.i.shutdown.exit_crit_edge:                 ; preds = %unlock.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %shutdown.exit

do.body45.i:                                      ; preds = %unlock.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !328
  tail call void @arm_heavy_mb() #11
  %and49.i = and i8 %28, -5
  %30 = ptrtoint ptr %dram to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dram, align 4
  %CmdReg52.i = getelementptr inbounds %struct.func_dram, ptr %31, i32 0, i32 13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %CmdReg52.i, i8 %and49.i) #11, !srcloc !276
  br label %shutdown.exit

shutdown.exit:                                    ; preds = %do.body45.i, %unlock.i.shutdown.exit_crit_edge
  %adapter = getelementptr inbounds %struct.icom_port, ptr %port, i32 0, i32 21
  %32 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %adapter, align 4
  %kref = getelementptr inbounds %struct.icom_adapter, ptr %33, i32 0, i32 9
  tail call fastcc void @kref_put(ptr noundef %kref)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @icom_set_termios(ptr noundef %port, ptr noundef %termios, ptr noundef %old_termios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #11
  %c_cflag = getelementptr inbounds %struct.ktermios, ptr %termios, i32 0, i32 2
  %0 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %c_cflag, align 4
  %2 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %termios, align 4
  %4 = trunc i32 %1 to i8
  %5 = lshr i8 %4, 4
  %switch.idx.cast = and i8 %5, 3
  %switch.idx.mult = mul nsw i8 %switch.idx.cast, -4
  %switch.offset = add nsw i8 %switch.idx.mult, 44
  %6 = trunc i32 %1 to i8
  %7 = lshr i8 %6, 2
  %8 = and i8 %7, 16
  %and23 = lshr i32 %1, 7
  %9 = trunc i32 %and23 to i8
  %10 = and i8 %9, 2
  %and30 = lshr i32 %1, 9
  %11 = trunc i32 %and30 to i8
  %12 = and i8 %11, 1
  %13 = or i8 %10, %8
  %14 = or i8 %13, %12
  %15 = or i8 %14, %switch.offset
  %call37 = tail call i32 @uart_get_baud_rate(ptr noundef %port, ptr noundef %termios, ptr noundef %old_termios, i32 noundef 300, i32 noundef 460800) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  %spec.store.select = select i1 %tobool38.not, i32 9600, i32 %call37
  %16 = zext i32 %spec.store.select to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.123)
  switch i32 %spec.store.select, label %entry.for.end_crit_edge [
    i32 307200, label %for.end.fold.split344
    i32 600, label %for.end.fold.split
    i32 900, label %for.end.fold.split327
    i32 1200, label %for.end.fold.split328
    i32 1800, label %for.end.fold.split329
    i32 2400, label %for.end.fold.split330
    i32 3600, label %for.end.fold.split331
    i32 4800, label %for.end.fold.split332
    i32 7200, label %for.end.fold.split333
    i32 9600, label %for.end.fold.split334
    i32 14400, label %for.end.fold.split335
    i32 19200, label %for.end.fold.split336
    i32 28800, label %for.end.fold.split337
    i32 38400, label %for.end.fold.split338
    i32 57600, label %for.end.fold.split339
    i32 76800, label %for.end.fold.split340
    i32 115200, label %for.end.fold.split341
    i32 153600, label %for.end.fold.split342
    i32 230400, label %for.end.fold.split343
  ]

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end.fold.split:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end.fold.split327:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end.fold.split328:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end.fold.split329:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end.fold.split330:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end.fold.split331:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end.fold.split332:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end.fold.split333:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end.fold.split334:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end.fold.split335:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end.fold.split336:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end.fold.split337:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end.fold.split338:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end.fold.split339:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end.fold.split340:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end.fold.split341:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end.fold.split342:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end.fold.split343:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end.fold.split344:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.end.fold.split344, %for.end.fold.split343, %for.end.fold.split342, %for.end.fold.split341, %for.end.fold.split340, %for.end.fold.split339, %for.end.fold.split338, %for.end.fold.split337, %for.end.fold.split336, %for.end.fold.split335, %for.end.fold.split334, %for.end.fold.split333, %for.end.fold.split332, %for.end.fold.split331, %for.end.fold.split330, %for.end.fold.split329, %for.end.fold.split328, %for.end.fold.split327, %for.end.fold.split, %entry.for.end_crit_edge
  %new_config3.0 = phi i8 [ 1, %for.end.fold.split ], [ 2, %for.end.fold.split327 ], [ 3, %for.end.fold.split328 ], [ 4, %for.end.fold.split329 ], [ 5, %for.end.fold.split330 ], [ 6, %for.end.fold.split331 ], [ 7, %for.end.fold.split332 ], [ 8, %for.end.fold.split333 ], [ 9, %for.end.fold.split334 ], [ 10, %for.end.fold.split335 ], [ 11, %for.end.fold.split336 ], [ 12, %for.end.fold.split337 ], [ 13, %for.end.fold.split338 ], [ 14, %for.end.fold.split339 ], [ 15, %for.end.fold.split340 ], [ 16, %for.end.fold.split341 ], [ 17, %for.end.fold.split342 ], [ 18, %for.end.fold.split343 ], [ 19, %for.end.fold.split344 ], [ 0, %entry.for.end_crit_edge ]
  tail call void @uart_update_timeout(ptr noundef %port, i32 noundef %1, i32 noundef %spec.store.select) #11
  %dram = getelementptr inbounds %struct.icom_port, ptr %port, i32 0, i32 7
  %17 = ptrtoint ptr %dram to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dram, align 4
  %HDLCConfigReg = getelementptr inbounds %struct.func_dram, ptr %18, i32 0, i32 8
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %HDLCConfigReg) #11, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !329
  %20 = and i8 %19, -2
  %.lobit = lshr i32 %1, 31
  %21 = trunc i32 %.lobit to i8
  %tmp_byte.0 = or i8 %20, %21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !330
  tail call void @arm_heavy_mb() #11
  %22 = ptrtoint ptr %dram to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dram, align 4
  %HDLCConfigReg65 = getelementptr inbounds %struct.func_dram, ptr %23, i32 0, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %HDLCConfigReg65, i8 %tmp_byte.0) #11, !srcloc !276
  %read_status_mask = getelementptr inbounds %struct.icom_port, ptr %port, i32 0, i32 3
  %and66 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  %storemerge317 = select i1 %tobool67.not, i8 80, i8 -47
  %24 = and i32 %3, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %25 = icmp eq i32 %24, 0
  %26 = or i8 %storemerge317, 4
  %spec.select = select i1 %25, i8 %storemerge317, i8 %26
  %27 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %spec.select, ptr %read_status_mask, align 2
  %ignore_status_mask = getelementptr inbounds %struct.icom_port, ptr %port, i32 0, i32 4
  %and84 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  %spec.select318 = select i1 %tobool85.not, i8 0, i8 -127
  %28 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %spec.select318, ptr %ignore_status_mask, align 1
  %and92 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp eq i32 %and92, 0
  br i1 %tobool93.not, label %for.end.if.end107_crit_edge, label %if.then94

for.end.if.end107_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end107

if.then94:                                        ; preds = %for.end
  %29 = or i8 %spec.select318, 4
  %30 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %ignore_status_mask, align 1
  br i1 %tobool85.not, label %if.then94.if.end107_crit_edge, label %if.then101

if.then94.if.end107_crit_edge:                    ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end107

if.then101:                                       ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #13
  %31 = or i8 %spec.select318, 68
  %32 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %ignore_status_mask, align 1
  br label %if.end107

if.end107:                                        ; preds = %if.then101, %if.then94.if.end107_crit_edge, %for.end.if.end107_crit_edge
  %and108 = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108)
  %cmp109 = icmp eq i32 %and108, 0
  br i1 %cmp109, label %if.then111, label %if.end107.do.body117_crit_edge

if.end107.do.body117_crit_edge:                   ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body117

if.then111:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %ignore_status_mask, align 1
  %35 = or i8 %34, 16
  store i8 %35, ptr %ignore_status_mask, align 1
  br label %do.body117

do.body117:                                       ; preds = %if.then111, %if.end107.do.body117_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !331
  tail call void @arm_heavy_mb() #11
  %36 = ptrtoint ptr %dram to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dram, align 4
  %CmdReg = getelementptr inbounds %struct.func_dram, ptr %37, i32 0, i32 13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %CmdReg, i8 0) #11, !srcloc !276
  %38 = ptrtoint ptr %dram to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dram, align 4
  %PrevCmdReg = getelementptr inbounds %struct.func_dram, ptr %39, i32 0, i32 12
  %40 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %PrevCmdReg) #11, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !332
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %cmp132 = icmp eq i8 %40, 0
  br i1 %cmp132, label %do.body117.for.end138_crit_edge, label %for.cond121

do.body117.for.end138_crit_edge:                  ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end138

for.cond121:                                      ; preds = %do.body117
  %41 = ptrtoint ptr %dram to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dram, align 4
  %PrevCmdReg.1 = getelementptr inbounds %struct.func_dram, ptr %42, i32 0, i32 12
  %43 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %PrevCmdReg.1) #11, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !332
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %cmp132.1 = icmp eq i8 %43, 0
  br i1 %cmp132.1, label %for.cond121.for.end138_crit_edge, label %for.cond121.1

for.cond121.for.end138_crit_edge:                 ; preds = %for.cond121
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end138

for.cond121.1:                                    ; preds = %for.cond121
  %44 = ptrtoint ptr %dram to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dram, align 4
  %PrevCmdReg.2 = getelementptr inbounds %struct.func_dram, ptr %45, i32 0, i32 12
  %46 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %PrevCmdReg.2) #11, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !332
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %cmp132.2 = icmp eq i8 %46, 0
  br i1 %cmp132.2, label %for.cond121.1.for.end138_crit_edge, label %for.cond121.2

for.cond121.1.for.end138_crit_edge:               ; preds = %for.cond121.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end138

for.cond121.2:                                    ; preds = %for.cond121.1
  %47 = ptrtoint ptr %dram to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dram, align 4
  %PrevCmdReg.3 = getelementptr inbounds %struct.func_dram, ptr %48, i32 0, i32 12
  %49 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %PrevCmdReg.3) #11, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !332
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %cmp132.3 = icmp eq i8 %49, 0
  br i1 %cmp132.3, label %for.cond121.2.for.end138_crit_edge, label %for.cond121.3

for.cond121.2.for.end138_crit_edge:               ; preds = %for.cond121.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end138

for.cond121.3:                                    ; preds = %for.cond121.2
  %50 = ptrtoint ptr %dram to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dram, align 4
  %PrevCmdReg.4 = getelementptr inbounds %struct.func_dram, ptr %51, i32 0, i32 12
  %52 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %PrevCmdReg.4) #11, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !332
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %cmp132.4 = icmp eq i8 %52, 0
  br i1 %cmp132.4, label %for.cond121.3.for.end138_crit_edge, label %for.cond121.4

for.cond121.3.for.end138_crit_edge:               ; preds = %for.cond121.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end138

for.cond121.4:                                    ; preds = %for.cond121.3
  %53 = ptrtoint ptr %dram to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dram, align 4
  %PrevCmdReg.5 = getelementptr inbounds %struct.func_dram, ptr %54, i32 0, i32 12
  %55 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %PrevCmdReg.5) #11, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !332
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %cmp132.5 = icmp eq i8 %55, 0
  br i1 %cmp132.5, label %for.cond121.4.for.end138_crit_edge, label %for.cond121.5

for.cond121.4.for.end138_crit_edge:               ; preds = %for.cond121.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end138

for.cond121.5:                                    ; preds = %for.cond121.4
  %56 = ptrtoint ptr %dram to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dram, align 4
  %PrevCmdReg.6 = getelementptr inbounds %struct.func_dram, ptr %57, i32 0, i32 12
  %58 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %PrevCmdReg.6) #11, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !332
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %cmp132.6 = icmp eq i8 %58, 0
  br i1 %cmp132.6, label %for.cond121.5.for.end138_crit_edge, label %for.cond121.6

for.cond121.5.for.end138_crit_edge:               ; preds = %for.cond121.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end138

for.cond121.6:                                    ; preds = %for.cond121.5
  %59 = ptrtoint ptr %dram to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dram, align 4
  %PrevCmdReg.7 = getelementptr inbounds %struct.func_dram, ptr %60, i32 0, i32 12
  %61 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %PrevCmdReg.7) #11, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !332
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %cmp132.7 = icmp eq i8 %61, 0
  br i1 %cmp132.7, label %for.cond121.6.for.end138_crit_edge, label %for.cond121.7

for.cond121.6.for.end138_crit_edge:               ; preds = %for.cond121.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end138

for.cond121.7:                                    ; preds = %for.cond121.6
  %62 = ptrtoint ptr %dram to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dram, align 4
  %PrevCmdReg.8 = getelementptr inbounds %struct.func_dram, ptr %63, i32 0, i32 12
  %64 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %PrevCmdReg.8) #11, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !332
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %cmp132.8 = icmp eq i8 %64, 0
  br i1 %cmp132.8, label %for.cond121.7.for.end138_crit_edge, label %for.cond121.8

for.cond121.7.for.end138_crit_edge:               ; preds = %for.cond121.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end138

for.cond121.8:                                    ; preds = %for.cond121.7
  call void @__sanitizer_cov_trace_pc() #13
  %65 = ptrtoint ptr %dram to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dram, align 4
  %PrevCmdReg.9 = getelementptr inbounds %struct.func_dram, ptr %66, i32 0, i32 12
  %67 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %PrevCmdReg.9) #11, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !332
  br label %for.end138

for.end138:                                       ; preds = %for.cond121.8, %for.cond121.7.for.end138_crit_edge, %for.cond121.6.for.end138_crit_edge, %for.cond121.5.for.end138_crit_edge, %for.cond121.4.for.end138_crit_edge, %for.cond121.3.for.end138_crit_edge, %for.cond121.2.for.end138_crit_edge, %for.cond121.1.for.end138_crit_edge, %for.cond121.for.end138_crit_edge, %do.body117.for.end138_crit_edge
  %statStg = getelementptr inbounds %struct.icom_port, ptr %port, i32 0, i32 9
  %68 = ptrtoint ptr %statStg to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %statStg, align 4
  %flags144 = getelementptr %struct.statusArea, ptr %69, i32 0, i32 1, i32 0, i32 6
  %70 = ptrtoint ptr %flags144 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 0, ptr %flags144, align 2
  %71 = load ptr, ptr %statStg, align 4
  %leLength = getelementptr %struct.statusArea, ptr %71, i32 0, i32 1, i32 0, i32 5
  %72 = ptrtoint ptr %leLength to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 0, ptr %leLength, align 4
  %73 = load ptr, ptr %statStg, align 4
  %WorkingLength = getelementptr %struct.statusArea, ptr %73, i32 0, i32 1, i32 0, i32 3
  %74 = ptrtoint ptr %WorkingLength to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 2, ptr %WorkingLength, align 4
  %75 = load ptr, ptr %statStg, align 4
  %flags144.1 = getelementptr %struct.statusArea, ptr %75, i32 0, i32 1, i32 1, i32 6
  %76 = ptrtoint ptr %flags144.1 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 0, ptr %flags144.1, align 2
  %77 = load ptr, ptr %statStg, align 4
  %leLength.1 = getelementptr %struct.statusArea, ptr %77, i32 0, i32 1, i32 1, i32 5
  %78 = ptrtoint ptr %leLength.1 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 0, ptr %leLength.1, align 4
  %79 = load ptr, ptr %statStg, align 4
  %WorkingLength.1 = getelementptr %struct.statusArea, ptr %79, i32 0, i32 1, i32 1, i32 3
  %80 = ptrtoint ptr %WorkingLength.1 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 2, ptr %WorkingLength.1, align 4
  %81 = load ptr, ptr %statStg, align 4
  %flags160 = getelementptr inbounds %struct.xmit_status_area, ptr %81, i32 0, i32 6
  %82 = ptrtoint ptr %flags160 to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 0, ptr %flags160, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !333
  tail call void @arm_heavy_mb() #11
  %83 = ptrtoint ptr %dram to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dram, align 4
  %async_config3 = getelementptr inbounds %struct.func_dram, ptr %84, i32 0, i32 15
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %async_config3, i8 %new_config3.0) #11, !srcloc !276
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !334
  tail call void @arm_heavy_mb() #11
  %85 = ptrtoint ptr %dram to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dram, align 4
  %async_config2 = getelementptr inbounds %struct.func_dram, ptr %86, i32 0, i32 14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %async_config2, i8 %15) #11, !srcloc !276
  %87 = ptrtoint ptr %dram to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dram, align 4
  %HDLCConfigReg175 = getelementptr inbounds %struct.func_dram, ptr %88, i32 0, i32 8
  %89 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %HDLCConfigReg175) #11, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !335
  %90 = or i8 %89, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !336
  tail call void @arm_heavy_mb() #11
  %91 = ptrtoint ptr %dram to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dram, align 4
  %HDLCConfigReg186 = getelementptr inbounds %struct.func_dram, ptr %92, i32 0, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %HDLCConfigReg186, i8 %90) #11, !srcloc !276
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !337
  tail call void @arm_heavy_mb() #11
  %93 = ptrtoint ptr %dram to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dram, align 4
  %FlagFillIdleTimer = getelementptr inbounds %struct.func_dram, ptr %94, i32 0, i32 5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %FlagFillIdleTimer, i8 4) #11, !srcloc !276
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !338
  tail call void @arm_heavy_mb() #11
  %95 = ptrtoint ptr %dram to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dram, align 4
  %ier = getelementptr inbounds %struct.func_dram, ptr %96, i32 0, i32 31
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %ier, i8 -1) #11, !srcloc !276
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !339
  tail call void @arm_heavy_mb() #11
  %97 = ptrtoint ptr %dram to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dram, align 4
  %CmdReg199 = getelementptr inbounds %struct.func_dram, ptr %98, i32 0, i32 13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %CmdReg199, i8 1) #11, !srcloc !276
  %99 = ptrtoint ptr %dram to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dram, align 4
  %CmdReg207 = getelementptr inbounds %struct.func_dram, ptr %100, i32 0, i32 13
  %101 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %CmdReg207) #11, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !340
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %cmp212 = icmp eq i8 %101, 0
  br i1 %cmp212, label %for.end138.for.end218_crit_edge, label %for.cond200

for.end138.for.end218_crit_edge:                  ; preds = %for.end138
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end218

for.cond200:                                      ; preds = %for.end138
  %102 = ptrtoint ptr %dram to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dram, align 4
  %CmdReg207.1 = getelementptr inbounds %struct.func_dram, ptr %103, i32 0, i32 13
  %104 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %CmdReg207.1) #11, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !340
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %cmp212.1 = icmp eq i8 %104, 0
  br i1 %cmp212.1, label %for.cond200.for.end218_crit_edge, label %for.cond200.1

for.cond200.for.end218_crit_edge:                 ; preds = %for.cond200
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end218

for.cond200.1:                                    ; preds = %for.cond200
  %105 = ptrtoint ptr %dram to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dram, align 4
  %CmdReg207.2 = getelementptr inbounds %struct.func_dram, ptr %106, i32 0, i32 13
  %107 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %CmdReg207.2) #11, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !340
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %cmp212.2 = icmp eq i8 %107, 0
  br i1 %cmp212.2, label %for.cond200.1.for.end218_crit_edge, label %for.cond200.2

for.cond200.1.for.end218_crit_edge:               ; preds = %for.cond200.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end218

for.cond200.2:                                    ; preds = %for.cond200.1
  %108 = ptrtoint ptr %dram to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dram, align 4
  %CmdReg207.3 = getelementptr inbounds %struct.func_dram, ptr %109, i32 0, i32 13
  %110 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %CmdReg207.3) #11, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !340
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %cmp212.3 = icmp eq i8 %110, 0
  br i1 %cmp212.3, label %for.cond200.2.for.end218_crit_edge, label %for.cond200.3

for.cond200.2.for.end218_crit_edge:               ; preds = %for.cond200.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end218

for.cond200.3:                                    ; preds = %for.cond200.2
  %111 = ptrtoint ptr %dram to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dram, align 4
  %CmdReg207.4 = getelementptr inbounds %struct.func_dram, ptr %112, i32 0, i32 13
  %113 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %CmdReg207.4) #11, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !340
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %cmp212.4 = icmp eq i8 %113, 0
  br i1 %cmp212.4, label %for.cond200.3.for.end218_crit_edge, label %for.cond200.4

for.cond200.3.for.end218_crit_edge:               ; preds = %for.cond200.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end218

for.cond200.4:                                    ; preds = %for.cond200.3
  %114 = ptrtoint ptr %dram to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %dram, align 4
  %CmdReg207.5 = getelementptr inbounds %struct.func_dram, ptr %115, i32 0, i32 13
  %116 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %CmdReg207.5) #11, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !340
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %cmp212.5 = icmp eq i8 %116, 0
  br i1 %cmp212.5, label %for.cond200.4.for.end218_crit_edge, label %for.cond200.5

for.cond200.4.for.end218_crit_edge:               ; preds = %for.cond200.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end218

for.cond200.5:                                    ; preds = %for.cond200.4
  %117 = ptrtoint ptr %dram to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dram, align 4
  %CmdReg207.6 = getelementptr inbounds %struct.func_dram, ptr %118, i32 0, i32 13
  %119 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %CmdReg207.6) #11, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !340
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %cmp212.6 = icmp eq i8 %119, 0
  br i1 %cmp212.6, label %for.cond200.5.for.end218_crit_edge, label %for.cond200.6

for.cond200.5.for.end218_crit_edge:               ; preds = %for.cond200.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end218

for.cond200.6:                                    ; preds = %for.cond200.5
  %120 = ptrtoint ptr %dram to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %dram, align 4
  %CmdReg207.7 = getelementptr inbounds %struct.func_dram, ptr %121, i32 0, i32 13
  %122 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %CmdReg207.7) #11, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !340
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %cmp212.7 = icmp eq i8 %122, 0
  br i1 %cmp212.7, label %for.cond200.6.for.end218_crit_edge, label %for.cond200.7

for.cond200.6.for.end218_crit_edge:               ; preds = %for.cond200.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end218

for.cond200.7:                                    ; preds = %for.cond200.6
  %123 = ptrtoint ptr %dram to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dram, align 4
  %CmdReg207.8 = getelementptr inbounds %struct.func_dram, ptr %124, i32 0, i32 13
  %125 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %CmdReg207.8) #11, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !340
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %cmp212.8 = icmp eq i8 %125, 0
  br i1 %cmp212.8, label %for.cond200.7.for.end218_crit_edge, label %for.cond200.8

for.cond200.7.for.end218_crit_edge:               ; preds = %for.cond200.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end218

for.cond200.8:                                    ; preds = %for.cond200.7
  call void @__sanitizer_cov_trace_pc() #13
  %126 = ptrtoint ptr %dram to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %dram, align 4
  %CmdReg207.9 = getelementptr inbounds %struct.func_dram, ptr %127, i32 0, i32 13
  %128 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %CmdReg207.9) #11, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !340
  br label %for.end218

for.end218:                                       ; preds = %for.cond200.8, %for.cond200.7.for.end218_crit_edge, %for.cond200.6.for.end218_crit_edge, %for.cond200.5.for.end218_crit_edge, %for.cond200.4.for.end218_crit_edge, %for.cond200.3.for.end218_crit_edge, %for.cond200.2.for.end218_crit_edge, %for.cond200.1.for.end218_crit_edge, %for.cond200.for.end218_crit_edge, %for.end138.for.end218_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !341
  tail call void @arm_heavy_mb() #11
  %statStg_pci = getelementptr inbounds %struct.icom_port, ptr %port, i32 0, i32 10
  %129 = ptrtoint ptr %statStg_pci to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %statStg_pci, align 4
  %add = add i32 %130, 20
  %131 = tail call i32 @llvm.bswap.i32(i32 %add)
  %132 = ptrtoint ptr %dram to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %dram, align 4
  %RcvStatusAddr = getelementptr inbounds %struct.func_dram, ptr %133, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RcvStatusAddr, i32 %131) #11, !srcloc !270
  %next_rcv = getelementptr inbounds %struct.icom_port, ptr %port, i32 0, i32 17
  %134 = ptrtoint ptr %next_rcv to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 0, ptr %next_rcv, align 4
  %put_length = getelementptr inbounds %struct.icom_port, ptr %port, i32 0, i32 18
  %135 = ptrtoint ptr %put_length to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 0, ptr %put_length, align 4
  %xmitRestart = getelementptr inbounds %struct.icom_port, ptr %port, i32 0, i32 11
  %136 = ptrtoint ptr %xmitRestart to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %xmitRestart, align 4
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 0, ptr %137, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !342
  tail call void @arm_heavy_mb() #11
  %xmitRestart_pci = getelementptr inbounds %struct.icom_port, ptr %port, i32 0, i32 12
  %139 = ptrtoint ptr %xmitRestart_pci to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %xmitRestart_pci, align 4
  %141 = tail call i32 @llvm.bswap.i32(i32 %140)
  %142 = ptrtoint ptr %dram to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %dram, align 4
  %XmitStatusAddr = getelementptr inbounds %struct.func_dram, ptr %143, i32 0, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %XmitStatusAddr, i32 %141) #11, !srcloc !270
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !343
  tail call void @arm_heavy_mb() #11
  %144 = ptrtoint ptr %dram to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %dram, align 4
  %CmdReg235 = getelementptr inbounds %struct.func_dram, ptr %145, i32 0, i32 13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %CmdReg235, i8 -64) #11, !srcloc !276
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call2) #11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @icom_type(ptr nocapture noundef readnone %port) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @.str
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @icom_release_port(ptr nocapture noundef %port) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @icom_request_port(ptr nocapture noundef readnone %port) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @icom_config_port(ptr nocapture noundef writeonly %port, i32 noundef %flags) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 60, ptr %type, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kref_put(ptr noundef %kref) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !344
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #11, !srcloc !345
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.return_crit_edge, label %if.then10.i.i.i, !prof !294

if.end5.i.i.i.return_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #11
  br label %return

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !346
  %add.ptr.i = getelementptr i8, ptr %kref, i32 -1764
  %numb_ports.i.i = getelementptr i8, ptr %kref, i32 -12
  %1 = ptrtoint ptr %numb_ports.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %numb_ports.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp21.i.i = icmp sgt i32 %2, 0
  br i1 %cmp21.i.i, label %for.body.lr.ph.i.i, label %if.then.for.end.i.i_crit_edge

if.then.for.end.i.i_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %if.then
  %pci_dev.i.i = getelementptr i8, ptr %kref, i32 -1756
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %index.022.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %status.i.i = getelementptr %struct.icom_adapter, ptr %add.ptr.i, i32 0, i32 3, i32 %index.022.i.i, i32 19
  %3 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %status.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1.i.i = icmp eq i32 %4, 1
  br i1 %cmp1.i.i, label %do.end.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

do.end.i.i:                                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i = getelementptr %struct.icom_adapter, ptr %add.ptr.i, i32 0, i32 3, i32 %index.022.i.i
  %5 = ptrtoint ptr %pci_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pci_dev.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i.i, ptr noundef nonnull @.str.110) #14
  %call.i.i = tail call i32 @uart_remove_one_port(ptr noundef nonnull @icom_uart_driver, ptr noundef %arrayidx.i.i) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !347
  tail call void @arm_heavy_mb() #11
  %dram.i.i = getelementptr %struct.icom_adapter, ptr %add.ptr.i, i32 0, i32 3, i32 %index.022.i.i, i32 7
  %7 = ptrtoint ptr %dram.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dram.i.i, align 4
  %osr.i.i = getelementptr inbounds %struct.func_dram, ptr %8, i32 0, i32 33
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %osr.i.i, i8 0) #11, !srcloc !276
  tail call void @msleep(i32 noundef 100) #11
  tail call fastcc void @stop_processor(ptr noundef %arrayidx.i.i) #11
  tail call fastcc void @free_port_memory(ptr noundef %arrayidx.i.i) #11
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %do.end.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %index.022.i.i, 1
  %9 = ptrtoint ptr %numb_ports.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %numb_ports.i.i, align 4
  %cmp.i.i = icmp slt i32 %inc.i.i, %10
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.for.end.i.i_crit_edge

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %if.then.for.end.i.i_crit_edge
  %pci_dev5.i.i = getelementptr i8, ptr %kref, i32 -1756
  %11 = ptrtoint ptr %pci_dev5.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pci_dev5.i.i, align 4
  %irq.i.i = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 46
  %13 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq.i.i, align 4
  %call6.i.i = tail call ptr @free_irq(i32 noundef %14, ptr noundef %add.ptr.i) #11
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr.i, align 4
  tail call void @iounmap(ptr noundef %16) #11
  %17 = ptrtoint ptr %pci_dev5.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pci_dev5.i.i, align 4
  tail call void @pci_release_regions(ptr noundef %18) #11
  %icom_adapter_entry.i.i.i = getelementptr i8, ptr %kref, i32 -8
  %call.i.i.i.i.i1 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %icom_adapter_entry.i.i.i) #11
  br i1 %call.i.i.i.i.i1, label %if.end.i.i.i.i.i, label %for.end.i.i.icom_kref_release.exit_crit_edge

for.end.i.i.icom_kref_release.exit_crit_edge:     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %icom_kref_release.exit

if.end.i.i.i.i.i:                                 ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i.i.i = getelementptr i8, ptr %kref, i32 -4
  %19 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %21 = ptrtoint ptr %icom_adapter_entry.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %icom_adapter_entry.i.i.i, align 4
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %icom_kref_release.exit

icom_kref_release.exit:                           ; preds = %if.end.i.i.i.i.i, %for.end.i.i.icom_kref_release.exit_crit_edge
  %25 = ptrtoint ptr %icom_adapter_entry.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 256 to ptr), ptr %icom_adapter_entry.i.i.i, align 4
  %prev.i.i.i.i = getelementptr i8, ptr %kref, i32 -4
  %26 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i.i, align 4
  tail call void @kfree(ptr noundef %add.ptr.i) #11
  br label %return

return:                                           ; preds = %icom_kref_release.exit, %if.then10.i.i.i, %if.end5.i.i.i.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stop_processor(ptr nocapture noundef readonly %icom_port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @icom_lock) #11
  %port5 = getelementptr inbounds %struct.icom_port, ptr %icom_port, i32 0, i32 8
  %0 = ptrtoint ptr %port5 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp6 = icmp ugt i32 %1, 3
  br i1 %cmp6, label %do.end10, label %if.end

do.end10:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %adapter = getelementptr inbounds %struct.icom_port, ptr %icom_port, i32 0, i32 21
  %2 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter, align 4
  %pci_dev = getelementptr inbounds %struct.icom_adapter, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.75) #14
  br label %unlock

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %switch = icmp ult i32 %1, 2
  %global_reg = getelementptr inbounds %struct.icom_port, ptr %icom_port, i32 0, i32 6
  %6 = ptrtoint ptr %global_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %global_reg, align 4
  %control_2 = getelementptr inbounds %struct.icom_regs, ptr %7, i32 0, i32 8
  %control_2.sink = select i1 %switch, ptr %7, ptr %control_2
  %8 = getelementptr [4 x %struct.lookup_proc_table], ptr @stop_proc, i32 0, i32 %1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %control_2.sink, ptr %8, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %control_2.sink) #11, !srcloc !265
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !348
  %processor_id = getelementptr [4 x %struct.lookup_proc_table], ptr @start_proc, i32 0, i32 %1, i32 1
  %12 = ptrtoint ptr %processor_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %processor_id, align 4
  %neg = xor i32 %13, -1
  %and = and i32 %11, %neg
  %processor_id27 = getelementptr [4 x %struct.lookup_proc_table], ptr @stop_proc, i32 0, i32 %1, i32 1
  %14 = ptrtoint ptr %processor_id27 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %processor_id27, align 4
  %or = or i32 %and, %15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !349
  tail call void @arm_heavy_mb() #11
  %16 = tail call i32 @llvm.bswap.i32(i32 %or)
  %17 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %8, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #11, !srcloc !270
  %19 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %8, align 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #11, !srcloc !265
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !350
  br label %unlock

unlock:                                           ; preds = %if.end, %do.end10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @icom_lock, i32 noundef %call2) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmioset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_remove_one_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_get_baud_rate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_update_timeout(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 83)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 83)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !25, !26, !27, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !91, !92, !93, !95, !96, !97, !98, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !153, !154, !155, !157, !159, !160, !161, !163, !165, !167, !168, !169, !170, !172, !173, !174, !176, !178, !179, !180, !182, !183, !184, !186, !187, !188, !190, !192, !193, !194, !196, !197, !198, !200, !201, !202, !204, !205, !206, !208, !209, !210, !212, !214, !216, !217, !218, !220, !221, !223, !225, !226, !227, !228, !230, !232, !234, !235, !236, !238, !240, !242, !244, !246, !248, !249, !250, !251, !253}
!llvm.module.flags = !{!255, !256, !257, !258, !259, !260, !261, !262}
!llvm.ident = !{!263}

!0 = !{ptr @__initcall__kmod_icom__240_1635_icom_init6, !1, !"__initcall__kmod_icom__240_1635_icom_init6", i1 false, i1 false}
!1 = !{!"../drivers/tty/serial/icom.c", i32 1635, i32 1}
!2 = !{ptr @__exitcall_icom_exit, !3, !"__exitcall_icom_exit", i1 false, i1 false}
!3 = !{!"../drivers/tty/serial/icom.c", i32 1636, i32 1}
!4 = !{ptr @__UNIQUE_ID_author241, !5, !"__UNIQUE_ID_author241", i1 false, i1 false}
!5 = !{!"../drivers/tty/serial/icom.c", i32 1638, i32 1}
!6 = !{ptr @__UNIQUE_ID_description242, !7, !"__UNIQUE_ID_description242", i1 false, i1 false}
!7 = !{!"../drivers/tty/serial/icom.c", i32 1639, i32 1}
!8 = !{ptr @__UNIQUE_ID_file243, !9, !"__UNIQUE_ID_file243", i1 false, i1 false}
!9 = !{!"../drivers/tty/serial/icom.c", i32 1640, i32 1}
!10 = !{ptr @__UNIQUE_ID_license244, !9, !"__UNIQUE_ID_license244", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_firmware245, !12, !"__UNIQUE_ID_firmware245", i1 false, i1 false}
!12 = !{!"../drivers/tty/serial/icom.c", i32 1641, i32 1}
!13 = !{ptr @__UNIQUE_ID_firmware246, !14, !"__UNIQUE_ID_firmware246", i1 false, i1 false}
!14 = !{!"../drivers/tty/serial/icom.c", i32 1642, i32 1}
!15 = !{ptr @__UNIQUE_ID_firmware247, !16, !"__UNIQUE_ID_firmware247", i1 false, i1 false}
!16 = !{!"../drivers/tty/serial/icom.c", i32 1643, i32 1}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/tty/serial/icom.c", i32 1607, i32 10}
!19 = !{ptr @icom_pci_driver, !20, !"icom_pci_driver", i1 false, i1 false}
!20 = !{!"../drivers/tty/serial/icom.c", i32 1606, i32 26}
!21 = !{ptr @icom_pci_table, !22, !"icom_pci_table", i1 false, i1 false}
!22 = !{!"../drivers/tty/serial/icom.c", i32 54, i32 35}
!23 = !{ptr @.str.1, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/tty/serial/icom.c", i32 1488, i32 3}
!25 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @icom_probe._entry, !24, !"_entry", i1 false, i1 false}
!30 = !{ptr @icom_probe._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/tty/serial/icom.c", i32 1494, i32 4}
!33 = !{ptr @icom_probe._entry.6, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @icom_probe._entry_ptr.8, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/tty/serial/icom.c", i32 1503, i32 3}
!37 = !{ptr @icom_probe._entry.9, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @icom_probe._entry_ptr.11, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/tty/serial/icom.c", i32 1521, i32 4}
!41 = !{ptr @icom_probe._entry.12, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @icom_probe._entry_ptr.14, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/tty/serial/icom.c", i32 1534, i32 3}
!45 = !{ptr @icom_probe._entry.15, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @icom_probe._entry_ptr.17, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/tty/serial/icom.c", i32 1568, i32 5}
!49 = !{ptr @icom_probe._entry.18, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @icom_probe._entry_ptr.20, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/tty/serial/icom.c", i32 1570, i32 5}
!53 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @icom_probe._entry.21, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @icom_probe._entry_ptr.24, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @icom_adapter_head, !57, !"icom_adapter_head", i1 false, i1 false}
!57 = !{!"../drivers/tty/serial/icom.c", i32 118, i32 8}
!58 = distinct !{null, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/tty/serial/icom.c", i32 840, i32 19}
!60 = distinct !{null, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/tty/serial/icom.c", i32 703, i32 20}
!62 = distinct !{null, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/tty/serial/icom.c", i32 725, i32 20}
!64 = distinct !{null, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/tty/serial/icom.c", i32 625, i32 19}
!66 = distinct !{null, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/tty/serial/icom.c", i32 629, i32 20}
!68 = distinct !{null, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/tty/serial/icom.c", i32 658, i32 20}
!70 = distinct !{null, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/tty/serial/icom.c", i32 737, i32 19}
!72 = distinct !{null, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/tty/serial/icom.c", i32 744, i32 20}
!74 = distinct !{null, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/tty/serial/icom.c", i32 747, i32 20}
!76 = distinct !{null, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/tty/serial/icom.c", i32 749, i32 20}
!78 = distinct !{null, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/tty/serial/icom.c", i32 769, i32 21}
!80 = distinct !{null, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/tty/serial/icom.c", i32 793, i32 22}
!82 = distinct !{null, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/tty/serial/icom.c", i32 802, i32 22}
!84 = !{ptr @check_modem_status.old_status, !85, !"old_status", i1 false, i1 false}
!85 = !{!"../drivers/tty/serial/icom.c", i32 668, i32 14}
!86 = distinct !{null, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/tty/serial/icom.c", i32 676, i32 19}
!88 = !{ptr @.str.39, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/tty/serial/icom.c", i32 1390, i32 5}
!90 = !{ptr @.str.40, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @icom_load_ports._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @icom_load_ports._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.41, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/tty/serial/icom.c", i32 175, i32 3}
!95 = !{ptr @.str.42, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @get_port_memory._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @get_port_memory._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = distinct !{null, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/tty/serial/icom.c", i32 179, i32 19}
!100 = !{ptr @.str.45, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/tty/serial/icom.c", i32 186, i32 3}
!102 = !{ptr @get_port_memory._entry.44, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @get_port_memory._entry_ptr.46, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.48, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/tty/serial/icom.c", i32 197, i32 3}
!106 = !{ptr @get_port_memory._entry.47, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @get_port_memory._entry_ptr.49, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.51, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/tty/serial/icom.c", i32 208, i32 3}
!110 = !{ptr @get_port_memory._entry.50, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @get_port_memory._entry_ptr.52, !109, !"_entry_ptr", i1 false, i1 false}
!112 = distinct !{null, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/tty/serial/icom.c", i32 220, i32 20}
!114 = distinct !{null, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/tty/serial/icom.c", i32 227, i32 21}
!116 = distinct !{null, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/tty/serial/icom.c", i32 248, i32 20}
!118 = distinct !{null, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/tty/serial/icom.c", i32 257, i32 21}
!120 = distinct !{null, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/tty/serial/icom.c", i32 139, i32 19}
!122 = !{ptr @icom_ops, !123, !"icom_ops", i1 false, i1 false}
!123 = !{!"../drivers/tty/serial/icom.c", i32 1275, i32 30}
!124 = distinct !{null, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/tty/serial/icom.c", i32 946, i32 19}
!126 = distinct !{null, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/tty/serial/icom.c", i32 950, i32 20}
!128 = distinct !{null, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/tty/serial/icom.c", i32 953, i32 20}
!130 = distinct !{null, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/tty/serial/icom.c", i32 958, i32 20}
!132 = distinct !{null, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/tty/serial/icom.c", i32 961, i32 20}
!134 = distinct !{null, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/tty/serial/icom.c", i32 973, i32 19}
!136 = distinct !{null, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/tty/serial/icom.c", i32 988, i32 19}
!138 = distinct !{null, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/tty/serial/icom.c", i32 997, i32 19}
!140 = distinct !{null, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/tty/serial/icom.c", i32 1012, i32 19}
!142 = distinct !{null, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/tty/serial/icom.c", i32 1019, i32 21}
!144 = distinct !{null, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/tty/serial/icom.c", i32 1046, i32 19}
!146 = distinct !{null, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/tty/serial/icom.c", i32 1065, i32 20}
!148 = distinct !{null, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/tty/serial/icom.c", i32 511, i32 19}
!150 = !{ptr @.str.71, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/tty/serial/icom.c", i32 515, i32 3}
!152 = !{ptr @.str.72, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @startup._entry, !151, !"_entry", i1 false, i1 false}
!154 = !{ptr @startup._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!155 = distinct !{null, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/tty/serial/icom.c", i32 524, i32 19}
!157 = !{ptr @.str.75, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/tty/serial/icom.c", i32 550, i32 3}
!159 = !{ptr @startup._entry.74, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @startup._entry_ptr.76, !158, !"_entry_ptr", i1 false, i1 false}
!161 = distinct !{null, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/tty/serial/icom.c", i32 355, i32 19}
!163 = !{ptr @.str.78, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/tty/serial/icom.c", i32 364, i32 28}
!165 = !{ptr @.str.79, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/tty/serial/icom.c", i32 365, i32 3}
!167 = !{ptr @.str.80, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @load_code._entry, !166, !"_entry", i1 false, i1 false}
!169 = !{ptr @load_code._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.82, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/tty/serial/icom.c", i32 371, i32 3}
!172 = !{ptr @load_code._entry.81, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @load_code._entry_ptr.83, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.84, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/tty/serial/icom.c", i32 384, i32 28}
!176 = !{ptr @.str.86, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/tty/serial/icom.c", i32 385, i32 3}
!178 = !{ptr @load_code._entry.85, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @load_code._entry_ptr.87, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.89, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/tty/serial/icom.c", i32 391, i32 3}
!182 = !{ptr @load_code._entry.88, !181, !"_entry", i1 false, i1 false}
!183 = !{ptr @load_code._entry_ptr.90, !181, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.92, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/tty/serial/icom.c", i32 424, i32 3}
!186 = !{ptr @load_code._entry.91, !185, !"_entry", i1 false, i1 false}
!187 = !{ptr @load_code._entry_ptr.93, !185, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.94, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/tty/serial/icom.c", i32 429, i32 28}
!190 = !{ptr @.str.96, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/tty/serial/icom.c", i32 430, i32 3}
!192 = !{ptr @load_code._entry.95, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @load_code._entry_ptr.97, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.99, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/tty/serial/icom.c", i32 436, i32 3}
!196 = !{ptr @load_code._entry.98, !195, !"_entry", i1 false, i1 false}
!197 = !{ptr @load_code._entry_ptr.100, !195, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.102, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/tty/serial/icom.c", i32 481, i32 3}
!200 = !{ptr @load_code._entry.101, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @load_code._entry_ptr.103, !199, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.105, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/tty/serial/icom.c", i32 497, i32 3}
!204 = !{ptr @load_code._entry.104, !203, !"_entry", i1 false, i1 false}
!205 = !{ptr @load_code._entry_ptr.106, !203, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.107, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/tty/serial/icom.c", i32 288, i32 3}
!208 = !{ptr @stop_processor._entry, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @stop_processor._entry_ptr, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @stop_proc, !211, !"stop_proc", i1 false, i1 false}
!211 = !{!"../drivers/tty/serial/icom.c", i32 101, i32 33}
!212 = !{ptr @start_proc, !213, !"start_proc", i1 false, i1 false}
!213 = !{!"../drivers/tty/serial/icom.c", i32 93, i32 33}
!214 = !{ptr @.str.108, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/tty/serial/icom.c", i32 319, i32 3}
!216 = !{ptr @start_processor._entry, !215, !"_entry", i1 false, i1 false}
!217 = !{ptr @start_processor._entry_ptr, !215, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.109, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/tty/serial/icom.c", i32 121, i32 8}
!220 = !{ptr @icom_lock, !219, !"icom_lock", i1 false, i1 false}
!221 = !{ptr @int_mask_tbl, !222, !"int_mask_tbl", i1 false, i1 false}
!222 = !{!"../drivers/tty/serial/icom.c", i32 108, i32 32}
!223 = !{ptr @.str.110, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/tty/serial/icom.c", i32 1444, i32 4}
!225 = !{ptr @.str.111, !224, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @icom_remove_adapter._entry, !224, !"_entry", i1 false, i1 false}
!227 = !{ptr @icom_remove_adapter._entry_ptr, !224, !"_entry_ptr", i1 false, i1 false}
!228 = distinct !{null, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/tty/serial/icom.c", i32 1076, i32 19}
!230 = distinct !{null, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/tty/serial/icom.c", i32 584, i32 19}
!232 = !{ptr @.str.114, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/tty/serial/icom.c", i32 591, i32 3}
!234 = !{ptr @shutdown._entry, !233, !"_entry", i1 false, i1 false}
!235 = !{ptr @shutdown._entry_ptr, !233, !"_entry_ptr", i1 false, i1 false}
!236 = distinct !{null, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/tty/serial/icom.c", i32 1102, i32 19}
!238 = distinct !{null, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/tty/serial/icom.c", i32 1133, i32 20}
!240 = distinct !{null, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/tty/serial/icom.c", i32 1138, i32 20}
!242 = distinct !{null, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/tty/serial/icom.c", i32 1250, i32 19}
!244 = distinct !{null, !245, !"icom_acfg_baud", i1 false, i1 false}
!245 = !{!"../drivers/tty/serial/icom.h", i32 13, i32 12}
!246 = !{ptr @.str.119, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/tty/serial/icom.c", i32 1603, i32 2}
!248 = !{ptr @.str.120, !247, !"<string literal>", i1 false, i1 false}
!249 = !{ptr @icom_remove._entry, !247, !"_entry", i1 false, i1 false}
!250 = !{ptr @icom_remove._entry_ptr, !247, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @.str.121, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/tty/serial/icom.c", i32 1298, i32 14}
!253 = !{ptr @icom_uart_driver, !254, !"icom_uart_driver", i1 false, i1 false}
!254 = !{!"../drivers/tty/serial/icom.c", i32 1295, i32 27}
!255 = !{i32 1, !"wchar_size", i32 2}
!256 = !{i32 1, !"min_enum_size", i32 4}
!257 = !{i32 8, !"branch-target-enforcement", i32 0}
!258 = !{i32 8, !"sign-return-address", i32 0}
!259 = !{i32 8, !"sign-return-address-all", i32 0}
!260 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!261 = !{i32 7, !"uwtable", i32 1}
!262 = !{i32 7, !"frame-pointer", i32 2}
!263 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!264 = !{!"auto-init"}
!265 = !{i64 4684041}
!266 = !{i64 2154859522}
!267 = !{i64 4683821}
!268 = !{i64 2154857536}
!269 = !{i64 2154859743}
!270 = !{i64 4683623}
!271 = !{i64 2154860399}
!272 = !{i64 2154860620}
!273 = !{i64 2154861276}
!274 = !{i64 2154856041}
!275 = !{i64 2154856323}
!276 = !{i64 4683426}
!277 = !{i64 2154856691}
!278 = !{i64 2154857127}
!279 = !{i64 2154862192}
!280 = !{i64 2154862602}
!281 = !{i64 2154863016}
!282 = !{i64 2154863398}
!283 = !{i64 2154863680}
!284 = !{i64 2154864107}
!285 = !{i64 2154864401}
!286 = !{i64 2154865182}
!287 = !{i64 2154865474}
!288 = !{i64 2154865860}
!289 = !{i64 2154866171}
!290 = !{i64 2154866455}
!291 = !{i64 2154867238}
!292 = !{i64 2148382811, i64 2148382843, i64 2148382872, i64 2148382906, i64 2148382937, i64 2148382960}
!293 = !{!"branch_weights", i32 1, i32 2000}
!294 = !{!"branch_weights", i32 2000, i32 1}
!295 = !{i64 2154845019}
!296 = !{i64 2154821899}
!297 = !{i64 4683003}
!298 = !{i64 2154826065}
!299 = !{i64 2154830025}
!300 = !{i64 2154830329}
!301 = !{i64 2154820677}
!302 = !{i64 2154820910}
!303 = !{i64 2154821664}
!304 = !{i64 2154830648}
!305 = !{i64 2154830964}
!306 = !{i64 2154831262}
!307 = !{i64 2154831556}
!308 = !{i64 2154831902}
!309 = !{i64 2154837648}
!310 = !{i64 2154837969}
!311 = !{i64 2154838398}
!312 = !{i64 2154838711}
!313 = !{i64 2154838966}
!314 = !{i64 2154840844}
!315 = !{i64 2154841259}
!316 = !{i64 2154845279}
!317 = !{i64 2154847900}
!318 = !{i64 2154848303}
!319 = !{i64 2154849042}
!320 = !{i64 2154849309}
!321 = !{i64 2154850163}
!322 = !{i64 2154868430}
!323 = !{i64 2154868714}
!324 = !{i64 2154853103}
!325 = !{i64 2154853369}
!326 = !{i64 2154854220}
!327 = !{i64 2154854466}
!328 = !{i64 2154854709}
!329 = !{i64 2154869813}
!330 = !{i64 2154870117}
!331 = !{i64 2154870825}
!332 = !{i64 2154871224}
!333 = !{i64 2154871728}
!334 = !{i64 2154872108}
!335 = !{i64 2154872533}
!336 = !{i64 2154872824}
!337 = !{i64 2154873198}
!338 = !{i64 2154873558}
!339 = !{i64 2154873910}
!340 = !{i64 2154874301}
!341 = !{i64 2154874702}
!342 = !{i64 2154875472}
!343 = !{i64 2154876104}
!344 = !{i64 2148470836}
!345 = !{i64 2148385276, i64 2148385308, i64 2148385337, i64 2148385371, i64 2148385402, i64 2148385425}
!346 = !{i64 2149346950}
!347 = !{i64 2154881471}
!348 = !{i64 2154816770}
!349 = !{i64 2154817002}
!350 = !{i64 2154817751}
