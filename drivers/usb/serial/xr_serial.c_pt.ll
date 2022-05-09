; ModuleID = '/llk/IR_all_yes/drivers/usb/serial/xr_serial.c_pt.bc'
source_filename = "../drivers/usb/serial/xr_serial.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.usb_serial_driver = type { ptr, ptr, %struct.list_head, %struct.device_driver, ptr, %struct.usb_dynids, i8, i8, i8, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.xr_type = type { i32, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.xr_txrx_clk_mask = type { i16, i16, i16 }
%struct.atomic_t = type { i32 }
%struct.usb_cdc_parsed_header = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.usb_serial = type { ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, [16 x ptr], %struct.kref, %struct.mutex, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_cdc_union_desc = type { i8, i8, i8, i8, i8 }
%struct.xr_data = type { ptr, i8 }
%struct.usb_serial_port = type { ptr, %struct.tty_port, %struct.spinlock, i32, i8, ptr, ptr, i8, ptr, i32, ptr, i8, ptr, i32, ptr, i8, [2 x ptr], [2 x ptr], i32, ptr, i32, ptr, %struct.kfifo, [2 x ptr], [2 x ptr], i32, i8, %struct.async_icount, i32, i32, %struct.work_struct, i32, %struct.device }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.37, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.37 = type { ptr }
%struct.llist_head = type { ptr }
%struct.kfifo = type { %union.anon.70, [0 x i8] }
%union.anon.70 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.async_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.38, %struct.anon.39, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.38 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.39 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.usb_cdc_line_coding = type <{ i32, i8, i8, i8 }>

@__initcall__kmod_xr_serial__247_1018_usb_serial_module_init6 = internal global ptr @usb_serial_module_init, section ".initcall6.init", align 4
@serial_drivers = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @xr_device, ptr null], [24 x i8] zeroinitializer }, align 32
@__exitcall_usb_serial_module_exit = internal global ptr @usb_serial_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author248 = internal constant [57 x i8] c"xr_serial.author=Manivannan Sadhasivam <mani@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description249 = internal constant [58 x i8] c"xr_serial.description=MaxLinear/Exar USB to Serial driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file250 = internal constant [44 x i8] c"xr_serial.file=drivers/usb/serial/xr_serial\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [22 x i8] c"xr_serial.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"xr_serial\00", [22 x i8] zeroinitializer }, align 32
@id_table = internal constant { [12 x %struct.usb_device_id], [64 x i8] } { [12 x %struct.usb_device_id] [%struct.usb_device_id { i16 131, i16 1250, i16 5120, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 0, i8 0, i8 0, i32 3 }, %struct.usb_device_id { i16 131, i16 1250, i16 5121, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 0, i8 0, i8 0, i32 3 }, %struct.usb_device_id { i16 131, i16 1250, i16 5122, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 0, i8 0, i8 0, i32 3 }, %struct.usb_device_id { i16 131, i16 1250, i16 5123, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 0, i8 0, i8 0, i32 3 }, %struct.usb_device_id { i16 131, i16 1250, i16 5136, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 131, i16 1250, i16 5137, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 131, i16 1250, i16 5138, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 131, i16 1250, i16 5140, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 131, i16 1250, i16 5152, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 131, i16 1250, i16 5154, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 131, i16 1250, i16 5156, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id zeroinitializer], [64 x i8] zeroinitializer }, align 32
@xr_device = internal global { %struct.usb_serial_driver, [72 x i8] } { %struct.usb_serial_driver { ptr null, ptr @id_table, %struct.list_head zeroinitializer, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, %struct.usb_dynids zeroinitializer, i8 1, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr @xr_probe, ptr null, ptr null, ptr null, ptr null, ptr @xr_port_probe, ptr @xr_port_remove, ptr null, ptr null, ptr null, ptr @xr_open, ptr @xr_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xr_set_termios, ptr @xr_break_ctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xr_tiocmget, ptr @xr_tiocmset, ptr null, ptr null, ptr @xr_dtr_rts, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [72 x i8] zeroinitializer }, align 32
@xr_types = internal constant { [4 x %struct.xr_type], [48 x i8] } { [4 x %struct.xr_type] [%struct.xr_type { i32 8, i8 0, i8 0, i8 1, i16 3, i16 12, i16 16, i16 17, i16 20, i16 26, i16 27, i16 29, i16 30, i16 31, i16 0, i16 0, i16 0, i8 0, i8 0, ptr @xr21v141x_uart_enable, ptr @xr21v141x_uart_disable, ptr @xr21v141x_fifo_reset, ptr @xr21v141x_set_line_settings }, %struct.xr_type { i32 16, i8 1, i8 0, i8 0, i16 0, i16 6, i16 7, i16 8, i16 10, i16 12, i16 13, i16 14, i16 15, i16 16, i16 64, i16 67, i16 96, i8 1, i8 1, ptr null, ptr null, ptr null, ptr null }, %struct.xr_type { i32 12, i8 0, i8 0, i8 1, i16 3072, i16 3078, i16 3079, i16 3080, i16 3082, i16 3084, i16 3085, i16 3086, i16 3087, i16 3088, i16 3200, i16 3264, i16 525, i8 0, i8 0, ptr null, ptr null, ptr null, ptr null }, %struct.xr_type { i32 16, i8 0, i8 5, i8 5, i16 64, i16 70, i16 71, i16 72, i16 74, i16 76, i16 77, i16 78, i16 79, i16 80, i16 96, i16 99, i16 129, i8 0, i8 0, ptr null, ptr null, ptr null, ptr null }], [48 x i8] zeroinitializer }, align 32
@xr_set_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 254, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to set reg 0x%02x: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"xr_set_reg\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/usb/serial/xr_serial.c\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@xr_set_reg._entry_ptr = internal global ptr @xr_set_reg._entry, section ".printk_index", align 4
@xr21v141x_txrx_clk_masks = internal constant { [32 x %struct.xr_txrx_clk_mask], [32 x i8] } { [32 x %struct.xr_txrx_clk_mask] [%struct.xr_txrx_clk_mask zeroinitializer, %struct.xr_txrx_clk_mask zeroinitializer, %struct.xr_txrx_clk_mask { i16 256, i16 0, i16 256 }, %struct.xr_txrx_clk_mask { i16 32, i16 1024, i16 32 }, %struct.xr_txrx_clk_mask { i16 16, i16 256, i16 16 }, %struct.xr_txrx_clk_mask { i16 520, i16 64, i16 520 }, %struct.xr_txrx_clk_mask { i16 260, i16 2080, i16 264 }, %struct.xr_txrx_clk_mask { i16 2116, i16 528, i16 2180 }, %struct.xr_txrx_clk_mask { i16 1092, i16 272, i16 1092 }, %struct.xr_txrx_clk_mask { i16 290, i16 2184, i16 548 }, %struct.xr_txrx_clk_mask { i16 2322, i16 1096, i16 2340 }, %struct.xr_txrx_clk_mask { i16 1170, i16 584, i16 1170 }, %struct.xr_txrx_clk_mask { i16 594, i16 2344, i16 658 }, %struct.xr_txrx_clk_mask { i16 2378, i16 1188, i16 2642 }, %struct.xr_txrx_clk_mask { i16 1322, i16 2724, i16 1354 }, %struct.xr_txrx_clk_mask { i16 2730, i16 2388, i16 1194 }, %struct.xr_txrx_clk_mask { i16 2730, i16 1364, i16 2730 }, %struct.xr_txrx_clk_mask { i16 1365, i16 2772, i16 1450 }, %struct.xr_txrx_clk_mask { i16 2901, i16 2740, i16 1370 }, %struct.xr_txrx_clk_mask { i16 1717, i16 1452, i16 2902 }, %struct.xr_txrx_clk_mask { i16 1461, i16 3436, i16 1750 }, %struct.xr_txrx_clk_mask { i16 2925, i16 2922, i16 3510 }, %struct.xr_txrx_clk_mask { i16 1901, i16 1754, i16 2998 }, %struct.xr_txrx_clk_mask { i16 3805, i16 3546, i16 1902 }, %struct.xr_txrx_clk_mask { i16 3549, i16 3002, i16 3822 }, %struct.xr_txrx_clk_mask { i16 1979, i16 3962, i16 3550 }, %struct.xr_txrx_clk_mask { i16 3963, i16 3830, i16 2014 }, %struct.xr_txrx_clk_mask { i16 3575, i16 3062, i16 3966 }, %struct.xr_txrx_clk_mask { i16 2039, i16 4078, i16 3838 }, %struct.xr_txrx_clk_mask { i16 4063, i16 4030, i16 2046 }, %struct.xr_txrx_clk_mask { i16 3967, i16 3838, i16 4094 }, %struct.xr_txrx_clk_mask { i16 4095, i16 4094, i16 4093 }], [32 x i8] zeroinitializer }, align 32
@xr21v141x_set_baudrate.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.3, ptr @.str.7, i8 0, i8 -112, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"xr21v141x_set_baudrate\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Setting baud rate: %u\0A\00", [41 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@xr_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 838, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to enable UART\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"xr_open\00", [24 x i8] zeroinitializer }, align 32
@xr_open._entry_ptr = internal global ptr @xr_open._entry, section ".printk_index", align 4
@xr_cdc_set_line_coding._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 806, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to set line coding: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"xr_cdc_set_line_coding\00", [41 x i8] zeroinitializer }, align 32
@xr_cdc_set_line_coding._entry_ptr = internal global ptr @xr_cdc_set_line_coding._entry, section ".printk_index", align 4
@xr_set_flow_mode.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.3, ptr @.str.13, i8 0, i8 -94, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"xr_set_flow_mode\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Enabling hardware flow ctrl\0A\00", [35 x i8] zeroinitializer }, align 32
@xr_set_flow_mode.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.3, ptr @.str.14, i8 0, i8 -93, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Enabling sw flow ctrl\0A\00", [41 x i8] zeroinitializer }, align 32
@xr_set_flow_mode.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.3, ptr @.str.15, i8 0, i8 -91, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Disabling flow ctrl\0A\00", [43 x i8] zeroinitializer }, align 32
@xr_get_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 290, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to get reg 0x%02x: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"xr_get_reg\00", [21 x i8] zeroinitializer }, align 32
@xr_get_reg._entry_ptr = internal global ptr @xr_get_reg._entry, section ".printk_index", align 4
@xr_break_ctl.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.3, ptr @.str.19, i8 0, i8 -127, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"xr_break_ctl\00", [19 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Turning break %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 16]
@__sancov_gen_cov_switch_values.22 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.23 = private unnamed_addr constant [15 x i8] c"serial_drivers\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 1014, i32 41 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 1018, i32 1 }
@___asan_gen_.29 = private unnamed_addr constant [9 x i8] c"id_table\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 979, i32 35 }
@___asan_gen_.32 = private unnamed_addr constant [10 x i8] c"xr_device\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 995, i32 33 }
@___asan_gen_.35 = private unnamed_addr constant [9 x i8] c"xr_types\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 148, i32 29 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 254, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant [25 x i8] c"xr21v141x_txrx_clk_masks\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 523, i32 38 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 578, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 838, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 806, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 648, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 655, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 661, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 290, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.114 = private constant [34 x i8] c"../drivers/usb/serial/xr_serial.c\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 517, i32 2 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @__UNIQUE_ID_author248, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_file250, ptr @__UNIQUE_ID_license251, ptr @__exitcall_usb_serial_module_exit, ptr @__initcall__kmod_xr_serial__247_1018_usb_serial_module_init6, ptr @usb_serial_module_exit, ptr @xr_cdc_set_line_coding._entry, ptr @xr_cdc_set_line_coding._entry_ptr, ptr @xr_get_reg._entry, ptr @xr_get_reg._entry_ptr, ptr @xr_open._entry, ptr @xr_open._entry_ptr, ptr @xr_set_reg._entry, ptr @xr_set_reg._entry_ptr, ptr @serial_drivers, ptr @.str, ptr @id_table, ptr @xr_device, ptr @xr_types, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @xr21v141x_txrx_clk_masks, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_drivers to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_table to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xr_device to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xr_types to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xr_set_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xr21v141x_txrx_clk_masks to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xr_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xr_cdc_set_line_coding._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xr_get_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_serial_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_serial_register_drivers(ptr noundef nonnull @serial_drivers, ptr noundef nonnull @.str, ptr noundef nonnull @id_table) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @usb_serial_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usb_serial_deregister_drivers(ptr noundef nonnull @serial_drivers) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_serial_deregister_drivers(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_serial_register_drivers(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xr_probe(ptr noundef %serial, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %hdrs = alloca %struct.usb_cdc_parsed_header, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %interface = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 2
  %0 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %interface, align 4
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur_altsetting, align 4
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %hdrs) #8
  %4 = call ptr @memset(ptr %hdrs, i32 255, i32 60)
  %extra = getelementptr inbounds %struct.usb_host_interface, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %extra, align 4
  %extralen = getelementptr inbounds %struct.usb_host_interface, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %extralen to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %extralen, align 4
  %call = call i32 @cdc_parse_cdc_header(ptr noundef nonnull %hdrs, ptr noundef %1, ptr noundef %6, i32 noundef %8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %hdrs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hdrs, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %11 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %serial, align 4
  %bSlaveInterface0 = getelementptr inbounds %struct.usb_cdc_union_desc, ptr %10, i32 0, i32 4
  %13 = ptrtoint ptr %bSlaveInterface0 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bSlaveInterface0, align 1
  %conv = zext i8 %14 to i32
  %call3 = call ptr @usb_ifnum_to_if(ptr noundef %12, i32 noundef %conv) #8
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end2.cleanup_crit_edge, label %if.end6

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end2
  %call7 = call i32 @usb_serial_claim_interface(ptr noundef %serial, ptr noundef nonnull %call3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %driver_info = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 12
  %15 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %driver_info, align 4
  %17 = inttoptr i32 %16 to ptr
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %serial, i32 0, i32 15
  %18 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %private.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end6.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -19, %if.end2.cleanup_crit_edge ], [ %call7, %if.end6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %hdrs) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xr_port_probe(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  %private.i = getelementptr inbounds %struct.usb_serial, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 8) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [4 x %struct.xr_type], ptr @xr_types, i32 0, i32 %4
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %arrayidx, ptr %call7.i.i, align 8
  %7 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %port, align 8
  %interface = getelementptr inbounds %struct.usb_serial, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %interface, align 4
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur_altsetting, align 4
  %cmp = icmp eq ptr %3, null
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bInterfaceNumber, align 1
  %15 = zext i1 %cmp to i8
  %.sink = lshr i8 %14, %15
  %16 = getelementptr inbounds %struct.xr_data, ptr %call7.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %.sink, ptr %16, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %18 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %19 = and i32 %4, 1073741823
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool10.not = icmp eq i32 %19, 0
  br i1 %tobool10.not, label %if.end.if.end17_crit_edge, label %if.then11

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then11:                                        ; preds = %if.end
  %custom_driver = getelementptr [4 x %struct.xr_type], ptr @xr_types, i32 0, i32 %4, i32 16
  %20 = ptrtoint ptr %custom_driver to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %custom_driver, align 4
  %22 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %16, align 4
  %24 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %8, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 8
  %shl.i.i.i = shl i32 %27, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %set_reg.i.i = getelementptr [4 x %struct.xr_type], ptr @xr_types, i32 0, i32 %4, i32 2
  %28 = ptrtoint ptr %set_reg.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %set_reg.i.i, align 1
  %reg_recipient.i.i = getelementptr [4 x %struct.xr_type], ptr @xr_types, i32 0, i32 %4, i32 1
  %30 = ptrtoint ptr %reg_recipient.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %reg_recipient.i.i, align 4
  %32 = or i8 %31, 64
  %conv7.i.i = zext i8 %23 to i16
  %shl.i.i = shl nuw i16 %conv7.i.i, 8
  %or9.i.i = or i16 %shl.i.i, %21
  %call11.i.i = tail call i32 @usb_control_msg(ptr noundef %25, i32 noundef %or.i.i, i8 noundef zeroext %29, i8 noundef zeroext %32, i16 noundef zeroext 1, i16 noundef zeroext %or9.i.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i)
  %cmp.i.i = icmp slt i32 %call11.i.i, 0
  br i1 %cmp.i.i, label %if.then11.err_free_crit_edge, label %if.then11.if.end17_crit_edge

if.then11.if.end17_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then11.err_free_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free

if.end17:                                         ; preds = %if.then11.if.end17_crit_edge, %if.end.if.end17_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %tobool.not.i.not = icmp eq i32 %19, 1
  %spec.select.i = select i1 %tobool.not.i.not, i16 768, i16 0
  %gpio_mode.i = getelementptr [4 x %struct.xr_type], ptr @xr_types, i32 0, i32 %4, i32 9
  %33 = ptrtoint ptr %gpio_mode.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %gpio_mode.i, align 2
  %35 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %driver_data.i.i, align 4
  %channel.i.i = getelementptr inbounds %struct.xr_data, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %channel.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %channel.i.i, align 4
  %39 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %36, align 4
  %41 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %port, align 8
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %44, align 8
  %shl.i.i.i.i = shl i32 %46, 8
  %or.i.i.i = or i32 %shl.i.i.i.i, -2147483648
  %set_reg.i.i.i = getelementptr inbounds %struct.xr_type, ptr %40, i32 0, i32 2
  %47 = ptrtoint ptr %set_reg.i.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %set_reg.i.i.i, align 1
  %reg_recipient.i.i.i = getelementptr inbounds %struct.xr_type, ptr %40, i32 0, i32 1
  %49 = ptrtoint ptr %reg_recipient.i.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %reg_recipient.i.i.i, align 4
  %51 = or i8 %50, 64
  %conv7.i.i.i = zext i8 %38 to i16
  %shl.i.i.i42 = shl nuw i16 %conv7.i.i.i, 8
  %or9.i.i.i = or i16 %shl.i.i.i42, %34
  %call11.i.i.i = tail call i32 @usb_control_msg(ptr noundef %44, i32 noundef %or.i.i.i, i8 noundef zeroext %48, i8 noundef zeroext %51, i16 noundef zeroext %spec.select.i, i16 noundef zeroext %or9.i.i.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call11.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end17.err_free_crit_edge, label %if.end4.i

if.end17.err_free_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free

if.end4.i:                                        ; preds = %if.end17
  %gpio_direction.i = getelementptr [4 x %struct.xr_type], ptr @xr_types, i32 0, i32 %4, i32 10
  %52 = ptrtoint ptr %gpio_direction.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %gpio_direction.i, align 4
  %54 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %driver_data.i.i, align 4
  %channel.i28.i = getelementptr inbounds %struct.xr_data, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %channel.i28.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %channel.i28.i, align 4
  %58 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %55, align 4
  %60 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %port, align 8
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %63, align 8
  %shl.i.i.i29.i = shl i32 %65, 8
  %or.i.i30.i = or i32 %shl.i.i.i29.i, -2147483648
  %set_reg.i.i31.i = getelementptr inbounds %struct.xr_type, ptr %59, i32 0, i32 2
  %66 = ptrtoint ptr %set_reg.i.i31.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %set_reg.i.i31.i, align 1
  %reg_recipient.i.i32.i = getelementptr inbounds %struct.xr_type, ptr %59, i32 0, i32 1
  %68 = ptrtoint ptr %reg_recipient.i.i32.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %reg_recipient.i.i32.i, align 4
  %70 = or i8 %69, 64
  %conv7.i.i33.i = zext i8 %57 to i16
  %shl.i.i34.i = shl nuw i16 %conv7.i.i33.i, 8
  %or9.i.i35.i = or i16 %shl.i.i34.i, %53
  %call11.i.i36.i = tail call i32 @usb_control_msg(ptr noundef %63, i32 noundef %or.i.i30.i, i8 noundef zeroext %67, i8 noundef zeroext %70, i16 noundef zeroext 40, i16 noundef zeroext %or9.i.i35.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i36.i)
  %cmp.i.i37.i = icmp slt i32 %call11.i.i36.i, 0
  br i1 %cmp.i.i37.i, label %if.end4.i.err_free_crit_edge, label %if.end8.i

if.end4.i.err_free_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free

if.end8.i:                                        ; preds = %if.end4.i
  %gpio_set.i = getelementptr [4 x %struct.xr_type], ptr @xr_types, i32 0, i32 %4, i32 11
  %71 = ptrtoint ptr %gpio_set.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %gpio_set.i, align 2
  %73 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %driver_data.i.i, align 4
  %channel.i44.i = getelementptr inbounds %struct.xr_data, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %channel.i44.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %channel.i44.i, align 4
  %77 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %74, align 4
  %79 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %port, align 8
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %80, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %82, align 8
  %shl.i.i.i45.i = shl i32 %84, 8
  %or.i.i46.i = or i32 %shl.i.i.i45.i, -2147483648
  %set_reg.i.i47.i = getelementptr inbounds %struct.xr_type, ptr %78, i32 0, i32 2
  %85 = ptrtoint ptr %set_reg.i.i47.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %set_reg.i.i47.i, align 1
  %reg_recipient.i.i48.i = getelementptr inbounds %struct.xr_type, ptr %78, i32 0, i32 1
  %87 = ptrtoint ptr %reg_recipient.i.i48.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %reg_recipient.i.i48.i, align 4
  %89 = or i8 %88, 64
  %conv7.i.i49.i = zext i8 %76 to i16
  %shl.i.i50.i = shl nuw i16 %conv7.i.i49.i, 8
  %or9.i.i51.i = or i16 %shl.i.i50.i, %72
  %call11.i.i52.i = tail call i32 @usb_control_msg(ptr noundef %82, i32 noundef %or.i.i46.i, i8 noundef zeroext %86, i8 noundef zeroext %89, i16 noundef zeroext 40, i16 noundef zeroext %or9.i.i51.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i52.i)
  %cmp.i.i53.i = icmp slt i32 %call11.i.i52.i, 0
  br i1 %cmp.i.i53.i, label %if.end8.i.err_free_crit_edge, label %if.end8.i.cleanup_crit_edge

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8.i.err_free_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free

err_free:                                         ; preds = %if.end8.i.err_free_crit_edge, %if.end4.i.err_free_crit_edge, %if.end17.err_free_crit_edge, %if.then11.err_free_crit_edge
  %.sink.i.sink = phi i16 [ %21, %if.then11.err_free_crit_edge ], [ %34, %if.end17.err_free_crit_edge ], [ %53, %if.end4.i.err_free_crit_edge ], [ %72, %if.end8.i.err_free_crit_edge ]
  %call11.i.i52.sink.i.sink = phi i32 [ %call11.i.i, %if.then11.err_free_crit_edge ], [ %call11.i.i.i, %if.end17.err_free_crit_edge ], [ %call11.i.i36.i, %if.end4.i.err_free_crit_edge ], [ %call11.i.i52.i, %if.end8.i.err_free_crit_edge ]
  %conv8.i.i54.i = zext i16 %.sink.i.sink to i32
  %dev13.i.i55.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13.i.i55.i, ptr noundef nonnull @.str.1, i32 noundef %conv8.i.i54.i, i32 noundef %call11.i.i52.sink.i.sink) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %err_free, %if.end8.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11.i.i52.sink.i.sink, %err_free ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end8.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xr_port_remove(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @kfree(ptr noundef %1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xr_open(ptr noundef %tty, ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %fifo_reset.i = getelementptr inbounds %struct.xr_type, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %fifo_reset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fifo_reset.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %xr_fifo_reset.exit

if.end.i:                                         ; preds = %entry
  %tx_fifo_reset.i = getelementptr inbounds %struct.xr_type, ptr %3, i32 0, i32 14
  %6 = ptrtoint ptr %tx_fifo_reset.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %tx_fifo_reset.i, align 4
  %channel.i.i = getelementptr inbounds %struct.xr_data, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %channel.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %channel.i.i, align 4
  %10 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %port, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 8
  %shl.i.i.i.i = shl i32 %15, 8
  %or.i.i.i = or i32 %shl.i.i.i.i, -2147483648
  %set_reg.i.i.i = getelementptr inbounds %struct.xr_type, ptr %3, i32 0, i32 2
  %16 = ptrtoint ptr %set_reg.i.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %set_reg.i.i.i, align 1
  %reg_recipient.i.i.i = getelementptr inbounds %struct.xr_type, ptr %3, i32 0, i32 1
  %18 = ptrtoint ptr %reg_recipient.i.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %reg_recipient.i.i.i, align 4
  %20 = or i8 %19, 64
  %conv7.i.i.i = zext i8 %9 to i16
  %shl.i.i.i = shl nuw i16 %conv7.i.i.i, 8
  %or9.i.i.i = or i16 %shl.i.i.i, %7
  %call11.i.i.i = tail call i32 @usb_control_msg(ptr noundef %13, i32 noundef %or.i.i.i, i8 noundef zeroext %17, i8 noundef zeroext %20, i16 noundef zeroext 1, i16 noundef zeroext %or9.i.i.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call11.i.i.i, 0
  br i1 %cmp.i.i.i, label %xr_set_reg_uart.exit.i, label %if.end8.i

xr_set_reg_uart.exit.i:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv8.i.i.i = zext i16 %7 to i32
  %dev13.i.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13.i.i.i, ptr noundef nonnull @.str.1, i32 noundef %conv8.i.i.i, i32 noundef %call11.i.i.i) #12
  br label %cleanup

if.end8.i:                                        ; preds = %if.end.i
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %rx_fifo_reset.i = getelementptr inbounds %struct.xr_type, ptr %22, i32 0, i32 15
  %23 = ptrtoint ptr %rx_fifo_reset.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %rx_fifo_reset.i, align 2
  %25 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %driver_data.i.i.i, align 4
  %channel.i25.i = getelementptr inbounds %struct.xr_data, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %channel.i25.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %channel.i25.i, align 4
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %26, align 4
  %31 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %port, align 8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 8
  %shl.i.i.i26.i = shl i32 %36, 8
  %or.i.i27.i = or i32 %shl.i.i.i26.i, -2147483648
  %set_reg.i.i28.i = getelementptr inbounds %struct.xr_type, ptr %30, i32 0, i32 2
  %37 = ptrtoint ptr %set_reg.i.i28.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %set_reg.i.i28.i, align 1
  %reg_recipient.i.i29.i = getelementptr inbounds %struct.xr_type, ptr %30, i32 0, i32 1
  %39 = ptrtoint ptr %reg_recipient.i.i29.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %reg_recipient.i.i29.i, align 4
  %41 = or i8 %40, 64
  %conv7.i.i30.i = zext i8 %28 to i16
  %shl.i.i31.i = shl nuw i16 %conv7.i.i30.i, 8
  %or9.i.i32.i = or i16 %shl.i.i31.i, %24
  %call11.i.i33.i = tail call i32 @usb_control_msg(ptr noundef %34, i32 noundef %or.i.i27.i, i8 noundef zeroext %38, i8 noundef zeroext %41, i16 noundef zeroext 1, i16 noundef zeroext %or9.i.i32.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i33.i)
  %cmp.i.i34.i = icmp slt i32 %call11.i.i33.i, 0
  br i1 %cmp.i.i34.i, label %do.end.i.i37.i, label %if.end8.i.if.end_crit_edge

if.end8.i.if.end_crit_edge:                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end.i.i37.i:                                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv8.i.i35.i = zext i16 %24 to i32
  %dev13.i.i36.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13.i.i36.i, ptr noundef nonnull @.str.1, i32 noundef %conv8.i.i35.i, i32 noundef %call11.i.i33.i) #12
  br label %cleanup

xr_fifo_reset.exit:                               ; preds = %entry
  %call3.i = tail call i32 %5(ptr noundef %port) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not = icmp eq i32 %call3.i, 0
  br i1 %tobool.not, label %xr_fifo_reset.exit.if.end_crit_edge, label %xr_fifo_reset.exit.cleanup_crit_edge

xr_fifo_reset.exit.cleanup_crit_edge:             ; preds = %xr_fifo_reset.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

xr_fifo_reset.exit.if.end_crit_edge:              ; preds = %xr_fifo_reset.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %xr_fifo_reset.exit.if.end_crit_edge, %if.end8.i.if.end_crit_edge
  %42 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %driver_data.i.i.i, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %enable.i = getelementptr inbounds %struct.xr_type, ptr %45, i32 0, i32 19
  %46 = ptrtoint ptr %enable.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %enable.i, align 4
  %tobool.not.i26 = icmp eq ptr %47, null
  br i1 %tobool.not.i26, label %if.end.i30, label %xr_uart_enable.exit

if.end.i30:                                       ; preds = %if.end
  %uart_enable.i.i = getelementptr inbounds %struct.xr_type, ptr %45, i32 0, i32 4
  %48 = ptrtoint ptr %uart_enable.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %uart_enable.i.i, align 4
  %channel.i.i.i = getelementptr inbounds %struct.xr_data, ptr %43, i32 0, i32 1
  %50 = ptrtoint ptr %channel.i.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %channel.i.i.i, align 4
  %52 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %port, align 8
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %55, align 8
  %shl.i.i.i.i.i = shl i32 %57, 8
  %or.i.i.i.i = or i32 %shl.i.i.i.i.i, -2147483648
  %set_reg.i.i.i.i = getelementptr inbounds %struct.xr_type, ptr %45, i32 0, i32 2
  %58 = ptrtoint ptr %set_reg.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %set_reg.i.i.i.i, align 1
  %reg_recipient.i.i.i.i = getelementptr inbounds %struct.xr_type, ptr %45, i32 0, i32 1
  %60 = ptrtoint ptr %reg_recipient.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %reg_recipient.i.i.i.i, align 4
  %62 = or i8 %61, 64
  %conv7.i.i.i.i = zext i8 %51 to i16
  %shl.i.i.i.i29 = shl nuw i16 %conv7.i.i.i.i, 8
  %or9.i.i.i.i = or i16 %shl.i.i.i.i29, %49
  %call11.i.i.i.i = tail call i32 @usb_control_msg(ptr noundef %55, i32 noundef %or.i.i.i.i, i8 noundef zeroext %59, i8 noundef zeroext %62, i16 noundef zeroext 3, i16 noundef zeroext %or9.i.i.i.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %call11.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %xr_uart_enable.exit.thread58, label %if.end.i30.if.end4_crit_edge

if.end.i30.if.end4_crit_edge:                     ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

xr_uart_enable.exit.thread58:                     ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #10
  %conv8.i.i.i.i = zext i16 %49 to i32
  %dev13.i.i.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13.i.i.i.i, ptr noundef nonnull @.str.1, i32 noundef %conv8.i.i.i.i, i32 noundef %call11.i.i.i.i) #12
  br label %do.end

xr_uart_enable.exit:                              ; preds = %if.end
  %call3.i27 = tail call i32 %47(ptr noundef %port) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i27)
  %tobool2.not = icmp eq i32 %call3.i27, 0
  br i1 %tobool2.not, label %xr_uart_enable.exit.if.end4_crit_edge, label %xr_uart_enable.exit.do.end_crit_edge

xr_uart_enable.exit.do.end_crit_edge:             ; preds = %xr_uart_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

xr_uart_enable.exit.if.end4_crit_edge:            ; preds = %xr_uart_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

do.end:                                           ; preds = %xr_uart_enable.exit.do.end_crit_edge, %xr_uart_enable.exit.thread58
  %retval.0.i3161 = phi i32 [ %call11.i.i.i.i, %xr_uart_enable.exit.thread58 ], [ %call3.i27, %xr_uart_enable.exit.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #12
  br label %cleanup

if.end4:                                          ; preds = %xr_uart_enable.exit.if.end4_crit_edge, %if.end.i30.if.end4_crit_edge
  %tobool5.not = icmp eq ptr %tty, null
  br i1 %tobool5.not, label %if.end4.if.end7_crit_edge, label %if.then6

if.end4.if.end7_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @xr_set_termios(ptr noundef nonnull %tty, ptr noundef %port, ptr noundef null)
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end4.if.end7_crit_edge
  %call8 = tail call i32 @usb_serial_generic_open(ptr noundef %tty, ptr noundef %port) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end7.cleanup_crit_edge, label %if.then10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10:                                        ; preds = %if.end7
  %63 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %driver_data.i.i.i, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 4
  %disable.i = getelementptr inbounds %struct.xr_type, ptr %66, i32 0, i32 20
  %67 = ptrtoint ptr %disable.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %disable.i, align 4
  %tobool.not.i33 = icmp eq ptr %68, null
  br i1 %tobool.not.i33, label %if.end.i47, label %if.then.i35

if.then.i35:                                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i34 = tail call i32 %68(ptr noundef %port) #8
  br label %cleanup

if.end.i47:                                       ; preds = %if.then10
  %uart_enable.i.i36 = getelementptr inbounds %struct.xr_type, ptr %66, i32 0, i32 4
  %69 = ptrtoint ptr %uart_enable.i.i36 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %uart_enable.i.i36, align 4
  %channel.i.i.i37 = getelementptr inbounds %struct.xr_data, ptr %64, i32 0, i32 1
  %71 = ptrtoint ptr %channel.i.i.i37 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %channel.i.i.i37, align 4
  %73 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %port, align 8
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %76, align 8
  %shl.i.i.i.i.i38 = shl i32 %78, 8
  %or.i.i.i.i39 = or i32 %shl.i.i.i.i.i38, -2147483648
  %set_reg.i.i.i.i40 = getelementptr inbounds %struct.xr_type, ptr %66, i32 0, i32 2
  %79 = ptrtoint ptr %set_reg.i.i.i.i40 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %set_reg.i.i.i.i40, align 1
  %reg_recipient.i.i.i.i41 = getelementptr inbounds %struct.xr_type, ptr %66, i32 0, i32 1
  %81 = ptrtoint ptr %reg_recipient.i.i.i.i41 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %reg_recipient.i.i.i.i41, align 4
  %83 = or i8 %82, 64
  %conv7.i.i.i.i42 = zext i8 %72 to i16
  %shl.i.i.i.i43 = shl nuw i16 %conv7.i.i.i.i42, 8
  %or9.i.i.i.i44 = or i16 %shl.i.i.i.i43, %70
  %call11.i.i.i.i45 = tail call i32 @usb_control_msg(ptr noundef %76, i32 noundef %or.i.i.i.i39, i8 noundef zeroext %80, i8 noundef zeroext %83, i16 noundef zeroext 0, i16 noundef zeroext %or9.i.i.i.i44, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i.i.i45)
  %cmp.i.i.i.i46 = icmp slt i32 %call11.i.i.i.i45, 0
  br i1 %cmp.i.i.i.i46, label %do.end.i.i.i.i50, label %if.end.i47.cleanup_crit_edge

if.end.i47.cleanup_crit_edge:                     ; preds = %if.end.i47
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end.i.i.i.i50:                                 ; preds = %if.end.i47
  call void @__sanitizer_cov_trace_pc() #10
  %conv8.i.i.i.i48 = zext i16 %70 to i32
  %dev13.i.i.i.i49 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13.i.i.i.i49, ptr noundef nonnull @.str.1, i32 noundef %conv8.i.i.i.i48, i32 noundef %call11.i.i.i.i45) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end.i.i.i.i50, %if.end.i47.cleanup_crit_edge, %if.then.i35, %if.end7.cleanup_crit_edge, %do.end, %xr_fifo_reset.exit.cleanup_crit_edge, %do.end.i.i37.i, %xr_set_reg_uart.exit.i
  %retval.0 = phi i32 [ %retval.0.i3161, %do.end ], [ %call3.i, %xr_fifo_reset.exit.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ], [ %call8, %if.then.i35 ], [ %call8, %if.end.i47.cleanup_crit_edge ], [ %call8, %do.end.i.i.i.i50 ], [ %call11.i.i33.i, %do.end.i.i37.i ], [ %call11.i.i.i, %xr_set_reg_uart.exit.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xr_close(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @usb_serial_generic_close(ptr noundef %port) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %disable.i = getelementptr inbounds %struct.xr_type, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %disable.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %disable.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i = tail call i32 %5(ptr noundef %port) #8
  br label %xr_uart_disable.exit

if.end.i:                                         ; preds = %entry
  %uart_enable.i.i = getelementptr inbounds %struct.xr_type, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %uart_enable.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %uart_enable.i.i, align 4
  %channel.i.i.i = getelementptr inbounds %struct.xr_data, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %channel.i.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %channel.i.i.i, align 4
  %10 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %port, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 8
  %shl.i.i.i.i.i = shl i32 %15, 8
  %or.i.i.i.i = or i32 %shl.i.i.i.i.i, -2147483648
  %set_reg.i.i.i.i = getelementptr inbounds %struct.xr_type, ptr %3, i32 0, i32 2
  %16 = ptrtoint ptr %set_reg.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %set_reg.i.i.i.i, align 1
  %reg_recipient.i.i.i.i = getelementptr inbounds %struct.xr_type, ptr %3, i32 0, i32 1
  %18 = ptrtoint ptr %reg_recipient.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %reg_recipient.i.i.i.i, align 4
  %20 = or i8 %19, 64
  %conv7.i.i.i.i = zext i8 %9 to i16
  %shl.i.i.i.i = shl nuw i16 %conv7.i.i.i.i, 8
  %or9.i.i.i.i = or i16 %shl.i.i.i.i, %7
  %call11.i.i.i.i = tail call i32 @usb_control_msg(ptr noundef %13, i32 noundef %or.i.i.i.i, i8 noundef zeroext %17, i8 noundef zeroext %20, i16 noundef zeroext 0, i16 noundef zeroext %or9.i.i.i.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %call11.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %do.end.i.i.i.i, label %if.end.i.xr_uart_disable.exit_crit_edge

if.end.i.xr_uart_disable.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xr_uart_disable.exit

do.end.i.i.i.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv8.i.i.i.i = zext i16 %7 to i32
  %dev13.i.i.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13.i.i.i.i, ptr noundef nonnull @.str.1, i32 noundef %conv8.i.i.i.i, i32 noundef %call11.i.i.i.i) #12
  br label %xr_uart_disable.exit

xr_uart_disable.exit:                             ; preds = %do.end.i.i.i.i, %if.end.i.xr_uart_disable.exit_crit_edge, %if.then.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xr_set_termios(ptr noundef %tty, ptr noundef %port, ptr noundef %old_termios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %set_line_settings = getelementptr inbounds %struct.xr_type, ptr %3, i32 0, i32 22
  %4 = ptrtoint ptr %set_line_settings to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_line_settings, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %5(ptr noundef %tty, ptr noundef %port, ptr noundef %old_termios) #8
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %port, align 8
  %interface.i = getelementptr inbounds %struct.usb_serial, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %interface.i, align 4
  %cur_altsetting.i = getelementptr inbounds %struct.usb_interface, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %cur_altsetting.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cur_altsetting.i, align 4
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %7, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 7) #11
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.else.if.end_crit_edge, label %if.end.i

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %if.else
  %c_ospeed.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 7
  %15 = ptrtoint ptr %c_ospeed.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %c_ospeed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool3.not.i = icmp eq i32 %16, 0
  br i1 %tobool3.not.i, label %if.else.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #8
  br label %if.end14.i

if.else.i:                                        ; preds = %if.end.i
  %tobool7.not.i = icmp eq ptr %old_termios, null
  br i1 %tobool7.not.i, label %if.else.i.if.end14.i_crit_edge, label %if.then8.i

if.else.i.if.end14.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i

if.then8.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %c_ospeed9.i = getelementptr inbounds %struct.ktermios, ptr %old_termios, i32 0, i32 7
  %18 = ptrtoint ptr %c_ospeed9.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %c_ospeed9.i, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #8
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then8.i, %if.else.i.if.end14.i_crit_edge, %if.then4.i
  %.sink134.i = phi i32 [ %20, %if.then8.i ], [ %17, %if.then4.i ], [ -2145058816, %if.else.i.if.end14.i_crit_edge ]
  %21 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %.sink134.i, ptr %call7.i.i.i, align 8
  %c_cflag.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %22 = ptrtoint ptr %c_cflag.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %c_cflag.i, align 4
  %24 = trunc i32 %23 to i8
  %25 = lshr i8 %24, 5
  %26 = and i8 %25, 2
  %27 = getelementptr inbounds %struct.usb_cdc_line_coding, ptr %call7.i.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %26, ptr %27, align 4
  %and23.i = and i32 %23, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  br i1 %tobool24.not.i, label %if.else50.i, label %if.then25.i

if.then25.i:                                      ; preds = %if.end14.i
  %and28.i = and i32 %23, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool29.not.i = icmp eq i32 %and28.i, 0
  %and42.i = and i32 %23, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42.i)
  %tobool43.not.i = icmp eq i32 %and42.i, 0
  %bParityType47.i = getelementptr inbounds %struct.usb_cdc_line_coding, ptr %call7.i.i.i, i32 0, i32 2
  br i1 %tobool29.not.i, label %if.else39.i, label %if.then30.i

if.then30.i:                                      ; preds = %if.then25.i
  br i1 %tobool43.not.i, label %if.else36.i, label %if.then35.i

if.then35.i:                                      ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %bParityType47.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 3, ptr %bParityType47.i, align 1
  br label %if.end52.i

if.else36.i:                                      ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %bParityType47.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 4, ptr %bParityType47.i, align 1
  br label %if.end52.i

if.else39.i:                                      ; preds = %if.then25.i
  br i1 %tobool43.not.i, label %if.else46.i, label %if.then44.i

if.then44.i:                                      ; preds = %if.else39.i
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %bParityType47.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %bParityType47.i, align 1
  br label %if.end52.i

if.else46.i:                                      ; preds = %if.else39.i
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %bParityType47.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 2, ptr %bParityType47.i, align 1
  br label %if.end52.i

if.else50.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  %bParityType51.i = getelementptr inbounds %struct.usb_cdc_line_coding, ptr %call7.i.i.i, i32 0, i32 2
  %33 = ptrtoint ptr %bParityType51.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %bParityType51.i, align 1
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.else50.i, %if.else46.i, %if.then44.i, %if.else36.i, %if.then35.i
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  %have_5_6_bit_mode.i = getelementptr inbounds %struct.xr_type, ptr %35, i32 0, i32 17
  %36 = ptrtoint ptr %have_5_6_bit_mode.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %have_5_6_bit_mode.i, align 2, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool53.not.i = icmp eq i8 %37, 0
  br i1 %tobool53.not.i, label %land.lhs.true.i, label %if.end52.i.if.end76.i_crit_edge

if.end52.i.if.end76.i_crit_edge:                  ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76.i

land.lhs.true.i:                                  ; preds = %if.end52.i
  %and56.i = and i32 %23, 48
  %38 = zext i32 %and56.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and56.i, label %land.lhs.true.i.if.end76.i_crit_edge [
    i32 0, label %land.lhs.true.i.if.then61.i_crit_edge
    i32 16, label %land.lhs.true.i.if.then61.i_crit_edge11
  ]

land.lhs.true.i.if.then61.i_crit_edge11:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then61.i

land.lhs.true.i.if.then61.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then61.i

land.lhs.true.i.if.end76.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76.i

if.then61.i:                                      ; preds = %land.lhs.true.i.if.then61.i_crit_edge, %land.lhs.true.i.if.then61.i_crit_edge11
  %and64.i = and i32 %23, -49
  %39 = ptrtoint ptr %c_cflag.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %and64.i, ptr %c_cflag.i, align 4
  %tobool65.not.i = icmp eq ptr %old_termios, null
  br i1 %tobool65.not.i, label %if.else71.i, label %if.then66.i

if.then66.i:                                      ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #10
  %c_cflag67.i = getelementptr inbounds %struct.ktermios, ptr %old_termios, i32 0, i32 2
  %40 = ptrtoint ptr %c_cflag67.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %c_cflag67.i, align 4
  %and68.i = and i32 %41, 48
  %or.i = or i32 %and68.i, %and64.i
  br label %if.end76.sink.split.i

if.else71.i:                                      ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #10
  %or74.i = or i32 %23, 48
  br label %if.end76.sink.split.i

if.end76.sink.split.i:                            ; preds = %if.else71.i, %if.then66.i
  %or.sink.i = phi i32 [ %or.i, %if.then66.i ], [ %or74.i, %if.else71.i ]
  %42 = ptrtoint ptr %c_cflag.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %or.sink.i, ptr %c_cflag.i, align 4
  br label %if.end76.i

if.end76.i:                                       ; preds = %if.end76.sink.split.i, %land.lhs.true.i.if.end76.i_crit_edge, %if.end52.i.if.end76.i_crit_edge
  %43 = ptrtoint ptr %c_cflag.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %c_cflag.i, align 4
  %45 = trunc i32 %44 to i8
  %46 = lshr i8 %45, 4
  %switch.idx.cast = and i8 %46, 3
  %switch.offset = add nuw nsw i8 %switch.idx.cast, 5
  %bDataBits85.i = getelementptr inbounds %struct.usb_cdc_line_coding, ptr %call7.i.i.i, i32 0, i32 3
  %47 = ptrtoint ptr %bDataBits85.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %switch.offset, ptr %bDataBits85.i, align 2
  %48 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %13, align 8
  %shl.i.i = shl i32 %49, 8
  %or87.i = or i32 %shl.i.i, -2147483648
  %bInterfaceNumber.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %11, i32 0, i32 2
  %50 = ptrtoint ptr %bInterfaceNumber.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %bInterfaceNumber.i, align 2
  %conv.i = zext i8 %51 to i16
  %call88.i = tail call i32 @usb_control_msg(ptr noundef %13, i32 noundef %or87.i, i8 noundef zeroext 32, i8 noundef zeroext 33, i16 noundef zeroext 0, i16 noundef zeroext %conv.i, ptr noundef nonnull %call7.i.i.i, i16 noundef zeroext 7, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88.i)
  %cmp89.i = icmp slt i32 %call88.i, 0
  br i1 %cmp89.i, label %do.end.i, label %if.end76.i.if.end93.i_crit_edge

if.end76.i.if.end93.i_crit_edge:                  ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93.i

do.end.i:                                         ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev92.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev92.i, ptr noundef nonnull @.str.10, i32 noundef %call88.i) #12
  br label %if.end93.i

if.end93.i:                                       ; preds = %do.end.i, %if.end76.i.if.end93.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  br label %if.end

if.end:                                           ; preds = %if.end93.i, %if.else.if.end_crit_edge, %if.then
  tail call fastcc void @xr_set_flow_mode(ptr noundef %tty, ptr noundef %port, ptr noundef %old_termios)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xr_break_ctl(ptr nocapture noundef readonly %tty, i32 noundef %break_state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %break_state)
  %cmp = icmp eq i32 %break_state, 0
  br i1 %cmp, label %entry.do.body_crit_edge, label %if.else

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %sub2 = sub i32 32, %7
  %shr = lshr i32 -1, %sub2
  %conv = trunc i32 %shr to i16
  br label %do.body

do.body:                                          ; preds = %if.else, %entry.do.body_crit_edge
  %state.0 = phi i16 [ %conv, %if.else ], [ 0, %entry.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xr_break_ctl.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xr_break_ctl, %if.then6)) #8
          to label %do.end [label %if.then6], !srcloc !74

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %state.0)
  %cmp8 = icmp eq i16 %state.0, 0
  %cond = select i1 %cmp8, ptr @.str.20, ptr @.str.21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xr_break_ctl.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.19, ptr noundef nonnull %cond) #8
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %tx_break = getelementptr inbounds %struct.xr_type, ptr %5, i32 0, i32 8
  %8 = ptrtoint ptr %tx_break to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %tx_break, align 4
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i, align 4
  %channel.i = getelementptr inbounds %struct.xr_data, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %channel.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %channel.i, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 8
  %shl.i.i.i = shl i32 %21, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %set_reg.i.i = getelementptr inbounds %struct.xr_type, ptr %15, i32 0, i32 2
  %22 = ptrtoint ptr %set_reg.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %set_reg.i.i, align 1
  %reg_recipient.i.i = getelementptr inbounds %struct.xr_type, ptr %15, i32 0, i32 1
  %24 = ptrtoint ptr %reg_recipient.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %reg_recipient.i.i, align 4
  %26 = or i8 %25, 64
  %conv7.i.i = zext i8 %13 to i16
  %shl.i.i = shl nuw i16 %conv7.i.i, 8
  %or9.i.i = or i16 %shl.i.i, %9
  %call11.i.i = tail call i32 @usb_control_msg(ptr noundef %19, i32 noundef %or.i.i, i8 noundef zeroext %23, i8 noundef zeroext %26, i16 noundef zeroext %state.0, i16 noundef zeroext %or9.i.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i)
  %cmp.i.i = icmp slt i32 %call11.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %do.end.xr_set_reg_uart.exit_crit_edge

do.end.xr_set_reg_uart.exit_crit_edge:            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %xr_set_reg_uart.exit

do.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv8.i.i = zext i16 %9 to i32
  %dev13.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13.i.i, ptr noundef nonnull @.str.1, i32 noundef %conv8.i.i, i32 noundef %call11.i.i) #12
  br label %xr_set_reg_uart.exit

xr_set_reg_uart.exit:                             ; preds = %do.end.i.i, %do.end.xr_set_reg_uart.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xr_tiocmget(ptr nocapture noundef readonly %tty) #2 align 64 {
entry:
  %status = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %status) #8
  %4 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %status, align 2, !annotation !75
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %3, align 4
  %gpio_status = getelementptr inbounds %struct.xr_type, ptr %6, i32 0, i32 13
  %7 = ptrtoint ptr %gpio_status to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %gpio_status, align 2
  %call1 = call fastcc i32 @xr_get_reg_uart(ptr noundef %1, i16 noundef zeroext %8, ptr noundef nonnull %status)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %status, align 2
  %conv = zext i16 %10 to i32
  %and = lshr i32 %conv, 2
  %11 = and i32 %and, 2
  %and4 = lshr i32 %conv, 3
  %12 = and i32 %and4, 4
  %13 = or i32 %12, %11
  %and8 = shl nuw nsw i32 %conv, 1
  %14 = and i32 %and8, 32
  %15 = or i32 %13, %14
  %and13 = shl nuw nsw i32 %conv, 6
  %16 = and i32 %and13, 256
  %17 = or i32 %15, %16
  %and18 = shl nuw nsw i32 %conv, 7
  %18 = and i32 %and18, 128
  %19 = or i32 %17, %18
  %and23 = shl nuw nsw i32 %conv, 5
  %20 = and i32 %and23, 64
  %21 = or i32 %19, %20
  %or26 = xor i32 %21, 486
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %or26, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %status) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xr_tiocmset(ptr nocapture noundef readonly %tty, i32 noundef %set, i32 noundef %clear) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = trunc i32 %set to i16
  %7 = shl i16 %6, 3
  %8 = and i16 %7, 32
  %9 = shl i16 %6, 2
  %10 = and i16 %9, 8
  %11 = or i16 %10, %8
  %12 = trunc i32 %clear to i16
  %13 = shl i16 %12, 3
  %14 = and i16 %13, 32
  %15 = shl i16 %12, 2
  %16 = and i16 %15, 8
  %17 = or i16 %16, %14
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool24.not.i = icmp eq i16 %11, 0
  br i1 %tobool24.not.i, label %entry.if.end27.i_crit_edge, label %if.then25.i

entry.if.end27.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27.i

if.then25.i:                                      ; preds = %entry
  %gpio_clear.i = getelementptr inbounds %struct.xr_type, ptr %5, i32 0, i32 12
  %18 = ptrtoint ptr %gpio_clear.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %gpio_clear.i, align 4
  %channel.i.i = getelementptr inbounds %struct.xr_data, ptr %3, i32 0, i32 1
  %20 = ptrtoint ptr %channel.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %channel.i.i, align 4
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 8
  %shl.i.i.i.i = shl i32 %27, 8
  %or.i.i.i = or i32 %shl.i.i.i.i, -2147483648
  %set_reg.i.i.i = getelementptr inbounds %struct.xr_type, ptr %5, i32 0, i32 2
  %28 = ptrtoint ptr %set_reg.i.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %set_reg.i.i.i, align 1
  %reg_recipient.i.i.i = getelementptr inbounds %struct.xr_type, ptr %5, i32 0, i32 1
  %30 = ptrtoint ptr %reg_recipient.i.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %reg_recipient.i.i.i, align 4
  %32 = or i8 %31, 64
  %conv7.i.i.i = zext i8 %21 to i16
  %shl.i.i.i = shl nuw i16 %conv7.i.i.i, 8
  %or9.i.i.i = or i16 %shl.i.i.i, %19
  %call11.i.i.i = tail call i32 @usb_control_msg(ptr noundef %25, i32 noundef %or.i.i.i, i8 noundef zeroext %29, i8 noundef zeroext %32, i16 noundef zeroext %11, i16 noundef zeroext %or9.i.i.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call11.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.then25.i.if.end27.i_crit_edge

if.then25.i.if.end27.i_crit_edge:                 ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27.i

do.end.i.i.i:                                     ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv8.i.i.i = zext i16 %19 to i32
  %dev13.i.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13.i.i.i, ptr noundef nonnull @.str.1, i32 noundef %conv8.i.i.i, i32 noundef %call11.i.i.i) #12
  br label %if.end27.i

if.end27.i:                                       ; preds = %do.end.i.i.i, %if.then25.i.if.end27.i_crit_edge, %entry.if.end27.i_crit_edge
  %ret.0.i = phi i32 [ 0, %entry.if.end27.i_crit_edge ], [ %call11.i.i.i, %do.end.i.i.i ], [ 0, %if.then25.i.if.end27.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool28.not.i = icmp eq i16 %17, 0
  br i1 %tobool28.not.i, label %if.end27.i.xr_tiocmset_port.exit_crit_edge, label %if.then29.i

if.end27.i.xr_tiocmset_port.exit_crit_edge:       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xr_tiocmset_port.exit

if.then29.i:                                      ; preds = %if.end27.i
  %gpio_set30.i = getelementptr inbounds %struct.xr_type, ptr %5, i32 0, i32 11
  %33 = ptrtoint ptr %gpio_set30.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %gpio_set30.i, align 2
  %35 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %driver_data.i.i.i, align 4
  %channel.i45.i = getelementptr inbounds %struct.xr_data, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %channel.i45.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %channel.i45.i, align 4
  %39 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %36, align 4
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 8
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %44, align 8
  %shl.i.i.i46.i = shl i32 %46, 8
  %or.i.i47.i = or i32 %shl.i.i.i46.i, -2147483648
  %set_reg.i.i48.i = getelementptr inbounds %struct.xr_type, ptr %40, i32 0, i32 2
  %47 = ptrtoint ptr %set_reg.i.i48.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %set_reg.i.i48.i, align 1
  %reg_recipient.i.i49.i = getelementptr inbounds %struct.xr_type, ptr %40, i32 0, i32 1
  %49 = ptrtoint ptr %reg_recipient.i.i49.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %reg_recipient.i.i49.i, align 4
  %51 = or i8 %50, 64
  %conv7.i.i50.i = zext i8 %38 to i16
  %shl.i.i51.i = shl nuw i16 %conv7.i.i50.i, 8
  %or9.i.i52.i = or i16 %shl.i.i51.i, %34
  %call11.i.i53.i = tail call i32 @usb_control_msg(ptr noundef %44, i32 noundef %or.i.i47.i, i8 noundef zeroext %48, i8 noundef zeroext %51, i16 noundef zeroext %17, i16 noundef zeroext %or9.i.i52.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i53.i)
  %cmp.i.i54.i = icmp slt i32 %call11.i.i53.i, 0
  br i1 %cmp.i.i54.i, label %do.end.i.i57.i, label %if.then29.i.xr_tiocmset_port.exit_crit_edge

if.then29.i.xr_tiocmset_port.exit_crit_edge:      ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xr_tiocmset_port.exit

do.end.i.i57.i:                                   ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv8.i.i55.i = zext i16 %34 to i32
  %dev13.i.i56.i = getelementptr inbounds %struct.usb_serial_port, ptr %1, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13.i.i56.i, ptr noundef nonnull @.str.1, i32 noundef %conv8.i.i55.i, i32 noundef %call11.i.i53.i) #12
  br label %xr_tiocmset_port.exit

xr_tiocmset_port.exit:                            ; preds = %do.end.i.i57.i, %if.then29.i.xr_tiocmset_port.exit_crit_edge, %if.end27.i.xr_tiocmset_port.exit_crit_edge
  %ret.1.i = phi i32 [ %ret.0.i, %if.end27.i.xr_tiocmset_port.exit_crit_edge ], [ %call11.i.i53.i, %do.end.i.i57.i ], [ 0, %if.then29.i.xr_tiocmset_port.exit_crit_edge ]
  ret i32 %ret.1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xr_dtr_rts(ptr noundef %port, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  %driver_data.i.i.i3 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i3, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %gpio_clear.i = getelementptr inbounds %struct.xr_type, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %gpio_clear.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %gpio_clear.i, align 4
  %channel.i.i = getelementptr inbounds %struct.xr_data, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %channel.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %channel.i.i, align 4
  %8 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %port, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 8
  %shl.i.i.i.i = shl i32 %13, 8
  %or.i.i.i = or i32 %shl.i.i.i.i, -2147483648
  %set_reg.i.i.i = getelementptr inbounds %struct.xr_type, ptr %3, i32 0, i32 2
  %14 = ptrtoint ptr %set_reg.i.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %set_reg.i.i.i, align 1
  %reg_recipient.i.i.i = getelementptr inbounds %struct.xr_type, ptr %3, i32 0, i32 1
  %16 = ptrtoint ptr %reg_recipient.i.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %reg_recipient.i.i.i, align 4
  %18 = or i8 %17, 64
  %conv7.i.i.i = zext i8 %7 to i16
  %shl.i.i.i = shl nuw i16 %conv7.i.i.i, 8
  %or9.i.i.i = or i16 %shl.i.i.i, %5
  %call11.i.i.i = tail call i32 @usb_control_msg(ptr noundef %11, i32 noundef %or.i.i.i, i8 noundef zeroext %15, i8 noundef zeroext %18, i16 noundef zeroext 40, i16 noundef zeroext %or9.i.i.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call11.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.if.end.sink.split_crit_edge, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.if.end.sink.split_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.sink.split

if.else:                                          ; preds = %entry
  %gpio_set30.i = getelementptr inbounds %struct.xr_type, ptr %3, i32 0, i32 11
  %19 = ptrtoint ptr %gpio_set30.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %gpio_set30.i, align 2
  %channel.i45.i = getelementptr inbounds %struct.xr_data, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %channel.i45.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %channel.i45.i, align 4
  %23 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %port, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 8
  %shl.i.i.i46.i = shl i32 %28, 8
  %or.i.i47.i = or i32 %shl.i.i.i46.i, -2147483648
  %set_reg.i.i48.i = getelementptr inbounds %struct.xr_type, ptr %3, i32 0, i32 2
  %29 = ptrtoint ptr %set_reg.i.i48.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %set_reg.i.i48.i, align 1
  %reg_recipient.i.i49.i = getelementptr inbounds %struct.xr_type, ptr %3, i32 0, i32 1
  %31 = ptrtoint ptr %reg_recipient.i.i49.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %reg_recipient.i.i49.i, align 4
  %33 = or i8 %32, 64
  %conv7.i.i50.i = zext i8 %22 to i16
  %shl.i.i51.i = shl nuw i16 %conv7.i.i50.i, 8
  %or9.i.i52.i = or i16 %shl.i.i51.i, %20
  %call11.i.i53.i = tail call i32 @usb_control_msg(ptr noundef %26, i32 noundef %or.i.i47.i, i8 noundef zeroext %30, i8 noundef zeroext %33, i16 noundef zeroext 40, i16 noundef zeroext %or9.i.i52.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i53.i)
  %cmp.i.i54.i = icmp slt i32 %call11.i.i53.i, 0
  br i1 %cmp.i.i54.i, label %if.else.if.end.sink.split_crit_edge, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.else.if.end.sink.split_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.sink.split

if.end.sink.split:                                ; preds = %if.else.if.end.sink.split_crit_edge, %if.then.if.end.sink.split_crit_edge
  %.sink = phi i16 [ %5, %if.then.if.end.sink.split_crit_edge ], [ %20, %if.else.if.end.sink.split_crit_edge ]
  %call11.i.i53.i.sink = phi i32 [ %call11.i.i.i, %if.then.if.end.sink.split_crit_edge ], [ %call11.i.i53.i, %if.else.if.end.sink.split_crit_edge ]
  %conv8.i.i55.i = zext i16 %.sink to i32
  %dev13.i.i56.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13.i.i56.i, ptr noundef nonnull @.str.1, i32 noundef %conv8.i.i55.i, i32 noundef %call11.i.i53.i.sink) #12
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %if.else.if.end_crit_edge, %if.then.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdc_parse_cdc_header(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ifnum_to_if(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_serial_claim_interface(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xr_set_reg_uart(ptr noundef %port, i16 noundef zeroext %reg, i16 noundef zeroext %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %channel = getelementptr inbounds %struct.xr_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %channel, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %port, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  %shl.i.i = shl i32 %11, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %set_reg.i = getelementptr inbounds %struct.xr_type, ptr %5, i32 0, i32 2
  %12 = ptrtoint ptr %set_reg.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %set_reg.i, align 1
  %reg_recipient.i = getelementptr inbounds %struct.xr_type, ptr %5, i32 0, i32 1
  %14 = ptrtoint ptr %reg_recipient.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %reg_recipient.i, align 4
  %16 = or i8 %15, 64
  %conv7.i = zext i8 %3 to i16
  %shl.i = shl nuw i16 %conv7.i, 8
  %or9.i = or i16 %shl.i, %reg
  %call11.i = tail call i32 @usb_control_msg(ptr noundef %9, i32 noundef %or.i, i8 noundef zeroext %13, i8 noundef zeroext %16, i16 noundef zeroext %val, i16 noundef zeroext %or9.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp.i = icmp slt i32 %call11.i, 0
  br i1 %cmp.i, label %do.end.i, label %entry.xr_set_reg.exit_crit_edge

entry.xr_set_reg.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %xr_set_reg.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv8.i = zext i16 %reg to i32
  %dev13.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13.i, ptr noundef nonnull @.str.1, i32 noundef %conv8.i, i32 noundef %call11.i) #12
  br label %xr_set_reg.exit

xr_set_reg.exit:                                  ; preds = %do.end.i, %entry.xr_set_reg.exit_crit_edge
  %retval.0.i = phi i32 [ %call11.i, %do.end.i ], [ 0, %entry.xr_set_reg.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xr21v141x_uart_enable(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %channel.i = getelementptr inbounds %struct.xr_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %channel.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %channel.i, align 4
  %add.i = add i8 %3, 16
  %conv3.i = zext i8 %add.i to i16
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %port, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  %shl.i.i.i = shl i32 %11, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %set_reg.i.i = getelementptr inbounds %struct.xr_type, ptr %5, i32 0, i32 2
  %12 = ptrtoint ptr %set_reg.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %set_reg.i.i, align 1
  %reg_recipient.i.i = getelementptr inbounds %struct.xr_type, ptr %5, i32 0, i32 1
  %14 = ptrtoint ptr %reg_recipient.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %reg_recipient.i.i, align 4
  %16 = or i8 %15, 64
  %or9.i.i = or i16 %conv3.i, 1024
  %call11.i.i = tail call i32 @usb_control_msg(ptr noundef %9, i32 noundef %or.i.i, i8 noundef zeroext %13, i8 noundef zeroext %16, i16 noundef zeroext 1, i16 noundef zeroext %or9.i.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i)
  %cmp.i.i = icmp slt i32 %call11.i.i, 0
  br i1 %cmp.i.i, label %xr_set_reg_um.exit, label %if.end

xr_set_reg_um.exit:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv8.i.i = zext i8 %add.i to i32
  %dev13.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13.i.i, ptr noundef nonnull @.str.1, i32 noundef %conv8.i.i, i32 noundef %call11.i.i) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %17 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %driver_data.i.i.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %uart_enable.i = getelementptr inbounds %struct.xr_type, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %uart_enable.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %uart_enable.i, align 4
  %channel.i.i = getelementptr inbounds %struct.xr_data, ptr %18, i32 0, i32 1
  %23 = ptrtoint ptr %channel.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %channel.i.i, align 4
  %25 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %port, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 8
  %shl.i.i.i.i = shl i32 %30, 8
  %or.i.i.i = or i32 %shl.i.i.i.i, -2147483648
  %set_reg.i.i.i = getelementptr inbounds %struct.xr_type, ptr %20, i32 0, i32 2
  %31 = ptrtoint ptr %set_reg.i.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %set_reg.i.i.i, align 1
  %reg_recipient.i.i.i = getelementptr inbounds %struct.xr_type, ptr %20, i32 0, i32 1
  %33 = ptrtoint ptr %reg_recipient.i.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %reg_recipient.i.i.i, align 4
  %35 = or i8 %34, 64
  %conv7.i.i.i = zext i8 %24 to i16
  %shl.i.i.i19 = shl nuw i16 %conv7.i.i.i, 8
  %or9.i.i.i = or i16 %shl.i.i.i19, %22
  %call11.i.i.i = tail call i32 @usb_control_msg(ptr noundef %28, i32 noundef %or.i.i.i, i8 noundef zeroext %32, i8 noundef zeroext %35, i16 noundef zeroext 3, i16 noundef zeroext %or9.i.i.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call11.i.i.i, 0
  br i1 %cmp.i.i.i, label %__xr_uart_enable.exit, label %if.end4

__xr_uart_enable.exit:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv8.i.i.i = zext i16 %22 to i32
  %dev13.i.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13.i.i.i, ptr noundef nonnull @.str.1, i32 noundef %conv8.i.i.i, i32 noundef %call11.i.i.i) #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %36 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %driver_data.i.i.i, align 4
  %channel.i21 = getelementptr inbounds %struct.xr_data, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %channel.i21 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %channel.i21, align 4
  %add.i22 = add i8 %39, 16
  %conv3.i23 = zext i8 %add.i22 to i16
  %40 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %37, align 4
  %42 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %port, align 8
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 8
  %shl.i.i.i24 = shl i32 %47, 8
  %or.i.i25 = or i32 %shl.i.i.i24, -2147483648
  %set_reg.i.i26 = getelementptr inbounds %struct.xr_type, ptr %41, i32 0, i32 2
  %48 = ptrtoint ptr %set_reg.i.i26 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %set_reg.i.i26, align 1
  %reg_recipient.i.i27 = getelementptr inbounds %struct.xr_type, ptr %41, i32 0, i32 1
  %50 = ptrtoint ptr %reg_recipient.i.i27 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %reg_recipient.i.i27, align 4
  %52 = or i8 %51, 64
  %or9.i.i28 = or i16 %conv3.i23, 1024
  %call11.i.i29 = tail call i32 @usb_control_msg(ptr noundef %45, i32 noundef %or.i.i25, i8 noundef zeroext %49, i8 noundef zeroext %52, i16 noundef zeroext 3, i16 noundef zeroext %or9.i.i28, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i29)
  %cmp.i.i30 = icmp slt i32 %call11.i.i29, 0
  br i1 %cmp.i.i30, label %if.then7, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then7:                                         ; preds = %if.end4
  %conv8.i.i31 = zext i8 %add.i22 to i32
  %dev13.i.i32 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13.i.i32, ptr noundef nonnull @.str.1, i32 noundef %conv8.i.i31, i32 noundef %call11.i.i29) #12
  %53 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %driver_data.i.i.i, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 4
  %uart_enable.i37 = getelementptr inbounds %struct.xr_type, ptr %56, i32 0, i32 4
  %57 = ptrtoint ptr %uart_enable.i37 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %uart_enable.i37, align 4
  %channel.i.i38 = getelementptr inbounds %struct.xr_data, ptr %54, i32 0, i32 1
  %59 = ptrtoint ptr %channel.i.i38 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %channel.i.i38, align 4
  %61 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %port, align 8
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %64, align 8
  %shl.i.i.i.i39 = shl i32 %66, 8
  %or.i.i.i40 = or i32 %shl.i.i.i.i39, -2147483648
  %set_reg.i.i.i41 = getelementptr inbounds %struct.xr_type, ptr %56, i32 0, i32 2
  %67 = ptrtoint ptr %set_reg.i.i.i41 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %set_reg.i.i.i41, align 1
  %reg_recipient.i.i.i42 = getelementptr inbounds %struct.xr_type, ptr %56, i32 0, i32 1
  %69 = ptrtoint ptr %reg_recipient.i.i.i42 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %reg_recipient.i.i.i42, align 4
  %71 = or i8 %70, 64
  %conv7.i.i.i43 = zext i8 %60 to i16
  %shl.i.i.i44 = shl nuw i16 %conv7.i.i.i43, 8
  %or9.i.i.i45 = or i16 %shl.i.i.i44, %58
  %call11.i.i.i46 = tail call i32 @usb_control_msg(ptr noundef %64, i32 noundef %or.i.i.i40, i8 noundef zeroext %68, i8 noundef zeroext %71, i16 noundef zeroext 0, i16 noundef zeroext %or9.i.i.i45, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i.i46)
  %cmp.i.i.i47 = icmp slt i32 %call11.i.i.i46, 0
  br i1 %cmp.i.i.i47, label %do.end.i.i.i50, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end.i.i.i50:                                   ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  %conv8.i.i.i48 = zext i16 %58 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13.i.i32, ptr noundef nonnull @.str.1, i32 noundef %conv8.i.i.i48, i32 noundef %call11.i.i.i46) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end.i.i.i50, %if.then7.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %__xr_uart_enable.exit, %xr_set_reg_um.exit
  %retval.0 = phi i32 [ %call11.i.i, %xr_set_reg_um.exit ], [ %call11.i.i.i, %__xr_uart_enable.exit ], [ %call11.i.i29, %if.then7.cleanup_crit_edge ], [ %call11.i.i29, %do.end.i.i.i50 ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xr21v141x_uart_disable(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %uart_enable.i = getelementptr inbounds %struct.xr_type, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %uart_enable.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %uart_enable.i, align 4
  %channel.i.i = getelementptr inbounds %struct.xr_data, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %channel.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %channel.i.i, align 4
  %8 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %port, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 8
  %shl.i.i.i.i = shl i32 %13, 8
  %or.i.i.i = or i32 %shl.i.i.i.i, -2147483648
  %set_reg.i.i.i = getelementptr inbounds %struct.xr_type, ptr %3, i32 0, i32 2
  %14 = ptrtoint ptr %set_reg.i.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %set_reg.i.i.i, align 1
  %reg_recipient.i.i.i = getelementptr inbounds %struct.xr_type, ptr %3, i32 0, i32 1
  %16 = ptrtoint ptr %reg_recipient.i.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %reg_recipient.i.i.i, align 4
  %18 = or i8 %17, 64
  %conv7.i.i.i = zext i8 %7 to i16
  %shl.i.i.i = shl nuw i16 %conv7.i.i.i, 8
  %or9.i.i.i = or i16 %shl.i.i.i, %5
  %call11.i.i.i = tail call i32 @usb_control_msg(ptr noundef %11, i32 noundef %or.i.i.i, i8 noundef zeroext %15, i8 noundef zeroext %18, i16 noundef zeroext 0, i16 noundef zeroext %or9.i.i.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call11.i.i.i, 0
  br i1 %cmp.i.i.i, label %__xr_uart_disable.exit, label %if.end

__xr_uart_disable.exit:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv8.i.i.i = zext i16 %5 to i32
  %dev13.i.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13.i.i.i, ptr noundef nonnull @.str.1, i32 noundef %conv8.i.i.i, i32 noundef %call11.i.i.i) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %19 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %driver_data.i.i.i, align 4
  %channel.i = getelementptr inbounds %struct.xr_data, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %channel.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %channel.i, align 4
  %add.i = add i8 %22, 16
  %conv3.i = zext i8 %add.i to i16
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %20, align 4
  %25 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %port, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 8
  %shl.i.i.i6 = shl i32 %30, 8
  %or.i.i = or i32 %shl.i.i.i6, -2147483648
  %set_reg.i.i = getelementptr inbounds %struct.xr_type, ptr %24, i32 0, i32 2
  %31 = ptrtoint ptr %set_reg.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %set_reg.i.i, align 1
  %reg_recipient.i.i = getelementptr inbounds %struct.xr_type, ptr %24, i32 0, i32 1
  %33 = ptrtoint ptr %reg_recipient.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %reg_recipient.i.i, align 4
  %35 = or i8 %34, 64
  %or9.i.i = or i16 %conv3.i, 1024
  %call11.i.i = tail call i32 @usb_control_msg(ptr noundef %28, i32 noundef %or.i.i, i8 noundef zeroext %32, i8 noundef zeroext %35, i16 noundef zeroext 0, i16 noundef zeroext %or9.i.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i)
  %cmp.i.i = icmp slt i32 %call11.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv8.i.i = zext i8 %add.i to i32
  %dev13.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13.i.i, ptr noundef nonnull @.str.1, i32 noundef %conv8.i.i, i32 noundef %call11.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end.i.i, %if.end.cleanup_crit_edge, %__xr_uart_disable.exit
  %retval.0 = phi i32 [ %call11.i.i.i, %__xr_uart_disable.exit ], [ %call11.i.i, %do.end.i.i ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xr21v141x_fifo_reset(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %channel.i = getelementptr inbounds %struct.xr_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %channel.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %channel.i, align 4
  %add.i = add i8 %3, 28
  %conv3.i = zext i8 %add.i to i16
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %port, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  %shl.i.i.i = shl i32 %11, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %set_reg.i.i = getelementptr inbounds %struct.xr_type, ptr %5, i32 0, i32 2
  %12 = ptrtoint ptr %set_reg.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %set_reg.i.i, align 1
  %reg_recipient.i.i = getelementptr inbounds %struct.xr_type, ptr %5, i32 0, i32 1
  %14 = ptrtoint ptr %reg_recipient.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %reg_recipient.i.i, align 4
  %16 = or i8 %15, 64
  %or9.i.i = or i16 %conv3.i, 1024
  %call11.i.i = tail call i32 @usb_control_msg(ptr noundef %9, i32 noundef %or.i.i, i8 noundef zeroext %13, i8 noundef zeroext %16, i16 noundef zeroext 1, i16 noundef zeroext %or9.i.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i)
  %cmp.i.i = icmp slt i32 %call11.i.i, 0
  br i1 %cmp.i.i, label %entry.cleanup.sink.split_crit_edge, label %if.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %17 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %driver_data.i.i.i, align 4
  %channel.i10 = getelementptr inbounds %struct.xr_data, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %channel.i10 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %channel.i10, align 4
  %add.i11 = add i8 %20, 24
  %conv3.i12 = zext i8 %add.i11 to i16
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %18, align 4
  %23 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %port, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 8
  %shl.i.i.i13 = shl i32 %28, 8
  %or.i.i14 = or i32 %shl.i.i.i13, -2147483648
  %set_reg.i.i15 = getelementptr inbounds %struct.xr_type, ptr %22, i32 0, i32 2
  %29 = ptrtoint ptr %set_reg.i.i15 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %set_reg.i.i15, align 1
  %reg_recipient.i.i16 = getelementptr inbounds %struct.xr_type, ptr %22, i32 0, i32 1
  %31 = ptrtoint ptr %reg_recipient.i.i16 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %reg_recipient.i.i16, align 4
  %33 = or i8 %32, 64
  %or9.i.i17 = or i16 %conv3.i12, 1024
  %call11.i.i18 = tail call i32 @usb_control_msg(ptr noundef %26, i32 noundef %or.i.i14, i8 noundef zeroext %30, i8 noundef zeroext %33, i16 noundef zeroext 1, i16 noundef zeroext %or9.i.i17, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i18)
  %cmp.i.i19 = icmp slt i32 %call11.i.i18, 0
  br i1 %cmp.i.i19, label %if.end.cleanup.sink.split_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %add.i11.sink = phi i8 [ %add.i, %entry.cleanup.sink.split_crit_edge ], [ %add.i11, %if.end.cleanup.sink.split_crit_edge ]
  %call11.i.i18.sink = phi i32 [ %call11.i.i, %entry.cleanup.sink.split_crit_edge ], [ %call11.i.i18, %if.end.cleanup.sink.split_crit_edge ]
  %conv8.i.i20 = zext i8 %add.i11.sink to i32
  %dev13.i.i21 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13.i.i21, ptr noundef nonnull @.str.1, i32 noundef %conv8.i.i20, i32 noundef %call11.i.i18.sink) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %call11.i.i18.sink, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xr21v141x_set_line_settings(ptr noundef %tty, ptr noundef %port, ptr noundef readonly %old_termios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %old_termios, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %c_ospeed = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 7
  %0 = ptrtoint ptr %c_ospeed to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %c_ospeed, align 4
  %c_ospeed3 = getelementptr inbounds %struct.ktermios, ptr %old_termios, i32 0, i32 7
  %2 = ptrtoint ptr %c_ospeed3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %c_ospeed3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp eq i32 %1, %3
  br i1 %cmp.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call fastcc void @xr21v141x_set_baudrate(ptr noundef %tty, ptr noundef %port)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %4 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %c_cflag, align 4
  %and = lshr i32 %5, 4
  %6 = and i32 %and, 3
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %6, label %if.end.unreachabledefault [
    i32 0, label %if.end.sw.bb_crit_edge
    i32 1, label %if.end.sw.bb_crit_edge119
    i32 2, label %if.end.sw.epilog_crit_edge
    i32 3, label %sw.default
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.sw.bb_crit_edge119:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge119
  %and6 = and i32 %5, -49
  %8 = ptrtoint ptr %c_cflag to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and6, ptr %c_cflag, align 4
  br i1 %tobool.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %c_cflag9 = getelementptr inbounds %struct.ktermios, ptr %old_termios, i32 0, i32 2
  %9 = ptrtoint ptr %c_cflag9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %c_cflag9, align 4
  %and10 = and i32 %10, 48
  %or = or i32 %and10, %and6
  br label %if.end14

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %or13 = or i32 %5, 48
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then8
  %storemerge = phi i32 [ %or13, %if.else ], [ %or, %if.then8 ]
  %11 = ptrtoint ptr %c_cflag to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %storemerge, ptr %c_cflag, align 4
  %and17 = and i32 %storemerge, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and17)
  %cmp18 = icmp eq i32 %and17, 32
  %. = select i1 %cmp18, i8 7, i8 8
  br label %sw.epilog

if.end.unreachabledefault:                        ; preds = %if.end
  unreachable

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end14, %if.end.sw.epilog_crit_edge
  %bits.0 = phi i8 [ 8, %sw.default ], [ %., %if.end14 ], [ 7, %if.end.sw.epilog_crit_edge ]
  %12 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %c_cflag, align 4
  %and37 = and i32 %13, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %sw.epilog.if.end73_crit_edge, label %if.then39

sw.epilog.if.end73_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end73

if.then39:                                        ; preds = %sw.epilog
  %and42 = and i32 %13, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  %and61 = and i32 %13, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool43.not, label %if.else58, label %if.then44

if.then44:                                        ; preds = %if.then39
  br i1 %tobool62.not, label %if.else53, label %if.then49

if.then49:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  %14 = or i8 %bits.0, 48
  br label %if.end73

if.else53:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  %15 = or i8 %bits.0, 64
  br label %if.end73

if.else58:                                        ; preds = %if.then39
  br i1 %tobool62.not, label %if.else67, label %if.then63

if.then63:                                        ; preds = %if.else58
  call void @__sanitizer_cov_trace_pc() #10
  %16 = or i8 %bits.0, 16
  br label %if.end73

if.else67:                                        ; preds = %if.else58
  call void @__sanitizer_cov_trace_pc() #10
  %17 = or i8 %bits.0, 32
  br label %if.end73

if.end73:                                         ; preds = %if.else67, %if.then63, %if.else53, %if.then49, %sw.epilog.if.end73_crit_edge
  %bits.1 = phi i8 [ %14, %if.then49 ], [ %15, %if.else53 ], [ %16, %if.then63 ], [ %17, %if.else67 ], [ %bits.0, %sw.epilog.if.end73_crit_edge ]
  %18 = trunc i32 %13 to i8
  %19 = shl i8 %18, 1
  %20 = and i8 %19, -128
  %21 = or i8 %bits.1, %20
  %conv87 = zext i8 %21 to i16
  %driver_data.i.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %22 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %driver_data.i.i.i, align 4
  %channel.i = getelementptr inbounds %struct.xr_data, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %channel.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %channel.i, align 4
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %23, align 4
  %28 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %port, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 8
  %shl.i.i.i = shl i32 %33, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %set_reg.i.i = getelementptr inbounds %struct.xr_type, ptr %27, i32 0, i32 2
  %34 = ptrtoint ptr %set_reg.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %set_reg.i.i, align 1
  %reg_recipient.i.i = getelementptr inbounds %struct.xr_type, ptr %27, i32 0, i32 1
  %36 = ptrtoint ptr %reg_recipient.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %reg_recipient.i.i, align 4
  %38 = or i8 %37, 64
  %conv7.i.i = zext i8 %25 to i16
  %shl.i.i = shl nuw i16 %conv7.i.i, 8
  %or9.i.i = or i16 %shl.i.i, 11
  %call11.i.i = tail call i32 @usb_control_msg(ptr noundef %31, i32 noundef %or.i.i, i8 noundef zeroext %35, i8 noundef zeroext %38, i16 noundef zeroext %conv87, i16 noundef zeroext %or9.i.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i)
  %cmp.i.i = icmp slt i32 %call11.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end73.xr_set_reg_uart.exit_crit_edge

if.end73.xr_set_reg_uart.exit_crit_edge:          ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  br label %xr_set_reg_uart.exit

do.end.i.i:                                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  %dev13.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13.i.i, ptr noundef nonnull @.str.1, i32 noundef 11, i32 noundef %call11.i.i) #12
  br label %xr_set_reg_uart.exit

xr_set_reg_uart.exit:                             ; preds = %do.end.i.i, %if.end73.xr_set_reg_uart.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xr21v141x_set_baudrate(ptr noundef %tty, ptr noundef %port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %c_ospeed = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 7
  %0 = ptrtoint ptr %c_ospeed to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %c_ospeed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = tail call i32 @llvm.umax.i32(i32 %1, i32 46)
  %3 = tail call i32 @llvm.umin.i32(i32 %2, i32 48000000)
  %div = udiv i32 48000000, %3
  %div7 = udiv i32 1536000000, %3
  %and = and i32 %div7, 31
  %arrayidx = getelementptr [32 x %struct.xr_txrx_clk_mask], ptr @xr21v141x_txrx_clk_masks, i32 0, i32 %and
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 2
  %and8 = and i32 %div, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  %rx1 = getelementptr [32 x %struct.xr_txrx_clk_mask], ptr @xr21v141x_txrx_clk_masks, i32 0, i32 %and, i32 2
  %rx0 = getelementptr [32 x %struct.xr_txrx_clk_mask], ptr @xr21v141x_txrx_clk_masks, i32 0, i32 %and, i32 1
  %rx_mask.0.in = select i1 %tobool9.not, ptr %rx0, ptr %rx1
  %6 = ptrtoint ptr %rx_mask.0.in to i32
  call void @__asan_load2_noabort(i32 %6)
  %rx_mask.0 = load i16, ptr %rx_mask.0.in, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xr21v141x_set_baudrate.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xr21v141x_set_baudrate, %if.then18)) #8
          to label %do.end [label %if.then18], !srcloc !74

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xr21v141x_set_baudrate.__UNIQUE_ID_ddebug243, ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %3) #8
  br label %do.end

do.end:                                           ; preds = %if.then18, %if.end
  %7 = trunc i32 %div to i16
  %conv = and i16 %7, 255
  %driver_data.i.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %8 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i.i, align 4
  %channel.i = getelementptr inbounds %struct.xr_data, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %channel.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %channel.i, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 4
  %14 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %port, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 8
  %shl.i.i.i = shl i32 %19, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %set_reg.i.i = getelementptr inbounds %struct.xr_type, ptr %13, i32 0, i32 2
  %20 = ptrtoint ptr %set_reg.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %set_reg.i.i, align 1
  %reg_recipient.i.i = getelementptr inbounds %struct.xr_type, ptr %13, i32 0, i32 1
  %22 = ptrtoint ptr %reg_recipient.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %reg_recipient.i.i, align 4
  %24 = or i8 %23, 64
  %conv7.i.i = zext i8 %11 to i16
  %shl.i.i = shl nuw i16 %conv7.i.i, 8
  %or9.i.i = or i16 %shl.i.i, 4
  %call11.i.i = tail call i32 @usb_control_msg(ptr noundef %17, i32 noundef %or.i.i, i8 noundef zeroext %21, i8 noundef zeroext %24, i16 noundef zeroext %conv, i16 noundef zeroext %or9.i.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i)
  %cmp.i.i = icmp slt i32 %call11.i.i, 0
  br i1 %cmp.i.i, label %xr_set_reg_uart.exit, label %if.end24

xr_set_reg_uart.exit:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev13.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13.i.i, ptr noundef nonnull @.str.1, i32 noundef 4, i32 noundef %call11.i.i) #12
  br label %cleanup

if.end24:                                         ; preds = %do.end
  %25 = lshr i16 %7, 8
  %26 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %driver_data.i.i.i, align 4
  %channel.i2 = getelementptr inbounds %struct.xr_data, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %channel.i2 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %channel.i2, align 4
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %27, align 4
  %32 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %port, align 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 8
  %shl.i.i.i3 = shl i32 %37, 8
  %or.i.i4 = or i32 %shl.i.i.i3, -2147483648
  %set_reg.i.i5 = getelementptr inbounds %struct.xr_type, ptr %31, i32 0, i32 2
  %38 = ptrtoint ptr %set_reg.i.i5 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %set_reg.i.i5, align 1
  %reg_recipient.i.i6 = getelementptr inbounds %struct.xr_type, ptr %31, i32 0, i32 1
  %40 = ptrtoint ptr %reg_recipient.i.i6 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %reg_recipient.i.i6, align 4
  %42 = or i8 %41, 64
  %conv7.i.i7 = zext i8 %29 to i16
  %shl.i.i8 = shl nuw i16 %conv7.i.i7, 8
  %or9.i.i9 = or i16 %shl.i.i8, 5
  %call11.i.i10 = tail call i32 @usb_control_msg(ptr noundef %35, i32 noundef %or.i.i4, i8 noundef zeroext %39, i8 noundef zeroext %42, i16 noundef zeroext %25, i16 noundef zeroext %or9.i.i9, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i10)
  %cmp.i.i11 = icmp slt i32 %call11.i.i10, 0
  br i1 %cmp.i.i11, label %xr_set_reg_uart.exit15, label %if.end30

xr_set_reg_uart.exit15:                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %dev13.i.i12 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13.i.i12, ptr noundef nonnull @.str.1, i32 noundef 5, i32 noundef %call11.i.i10) #12
  br label %cleanup

if.end30:                                         ; preds = %if.end24
  %shr31 = lshr i32 %div, 16
  %43 = trunc i32 %shr31 to i16
  %44 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %driver_data.i.i.i, align 4
  %channel.i17 = getelementptr inbounds %struct.xr_data, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %channel.i17 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %channel.i17, align 4
  %48 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %45, align 4
  %50 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %port, align 8
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %53, align 8
  %shl.i.i.i18 = shl i32 %55, 8
  %or.i.i19 = or i32 %shl.i.i.i18, -2147483648
  %set_reg.i.i20 = getelementptr inbounds %struct.xr_type, ptr %49, i32 0, i32 2
  %56 = ptrtoint ptr %set_reg.i.i20 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %set_reg.i.i20, align 1
  %reg_recipient.i.i21 = getelementptr inbounds %struct.xr_type, ptr %49, i32 0, i32 1
  %58 = ptrtoint ptr %reg_recipient.i.i21 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %reg_recipient.i.i21, align 4
  %60 = or i8 %59, 64
  %conv7.i.i22 = zext i8 %47 to i16
  %shl.i.i23 = shl nuw i16 %conv7.i.i22, 8
  %or9.i.i24 = or i16 %shl.i.i23, 6
  %call11.i.i25 = tail call i32 @usb_control_msg(ptr noundef %53, i32 noundef %or.i.i19, i8 noundef zeroext %57, i8 noundef zeroext %60, i16 noundef zeroext %43, i16 noundef zeroext %or9.i.i24, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i25)
  %cmp.i.i26 = icmp slt i32 %call11.i.i25, 0
  br i1 %cmp.i.i26, label %xr_set_reg_uart.exit30, label %if.end37

xr_set_reg_uart.exit30:                           ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %dev13.i.i27 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13.i.i27, ptr noundef nonnull @.str.1, i32 noundef 6, i32 noundef %call11.i.i25) #12
  br label %cleanup

if.end37:                                         ; preds = %if.end30
  %and39 = and i16 %5, 255
  %61 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %driver_data.i.i.i, align 4
  %channel.i32 = getelementptr inbounds %struct.xr_data, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %channel.i32 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %channel.i32, align 4
  %65 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %62, align 4
  %67 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %port, align 8
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %70, align 8
  %shl.i.i.i33 = shl i32 %72, 8
  %or.i.i34 = or i32 %shl.i.i.i33, -2147483648
  %set_reg.i.i35 = getelementptr inbounds %struct.xr_type, ptr %66, i32 0, i32 2
  %73 = ptrtoint ptr %set_reg.i.i35 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %set_reg.i.i35, align 1
  %reg_recipient.i.i36 = getelementptr inbounds %struct.xr_type, ptr %66, i32 0, i32 1
  %75 = ptrtoint ptr %reg_recipient.i.i36 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %reg_recipient.i.i36, align 4
  %77 = or i8 %76, 64
  %conv7.i.i37 = zext i8 %64 to i16
  %shl.i.i38 = shl nuw i16 %conv7.i.i37, 8
  %or9.i.i39 = or i16 %shl.i.i38, 7
  %call11.i.i40 = tail call i32 @usb_control_msg(ptr noundef %70, i32 noundef %or.i.i34, i8 noundef zeroext %74, i8 noundef zeroext %77, i16 noundef zeroext %and39, i16 noundef zeroext %or9.i.i39, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i40)
  %cmp.i.i41 = icmp slt i32 %call11.i.i40, 0
  br i1 %cmp.i.i41, label %xr_set_reg_uart.exit45, label %if.end44

xr_set_reg_uart.exit45:                           ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  %dev13.i.i42 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13.i.i42, ptr noundef nonnull @.str.1, i32 noundef 7, i32 noundef %call11.i.i40) #12
  br label %cleanup

if.end44:                                         ; preds = %if.end37
  %78 = lshr i16 %5, 8
  %call49 = tail call fastcc i32 @xr_set_reg_uart(ptr noundef %port, i16 noundef zeroext 8, i16 noundef zeroext %78)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end52, label %if.end44.cleanup_crit_edge

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end52:                                         ; preds = %if.end44
  %and54 = and i16 %rx_mask.0, 255
  %call56 = tail call fastcc i32 @xr_set_reg_uart(ptr noundef %port, i16 noundef zeroext 9, i16 noundef zeroext %and54)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end59, label %if.end52.cleanup_crit_edge

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end59:                                         ; preds = %if.end52
  %79 = lshr i16 %rx_mask.0, 8
  %call64 = tail call fastcc i32 @xr_set_reg_uart(ptr noundef %port, i16 noundef zeroext 10, i16 noundef zeroext %79)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end67, label %if.end59.cleanup_crit_edge

if.end59.cleanup_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end67:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @tty_encode_baud_rate(ptr noundef %tty, i32 noundef %3, i32 noundef %3) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end67, %if.end59.cleanup_crit_edge, %if.end52.cleanup_crit_edge, %if.end44.cleanup_crit_edge, %xr_set_reg_uart.exit45, %xr_set_reg_uart.exit30, %xr_set_reg_uart.exit15, %xr_set_reg_uart.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_encode_baud_rate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_serial_generic_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_serial_generic_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xr_set_flow_mode(ptr nocapture noundef readonly %tty, ptr noundef %port, ptr noundef readonly %old_termios) unnamed_addr #2 align 64 {
entry:
  %gpio_mode = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %gpio_mode) #8
  %4 = ptrtoint ptr %gpio_mode to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %gpio_mode, align 2, !annotation !75
  %gpio_mode2 = getelementptr inbounds %struct.xr_type, ptr %3, i32 0, i32 9
  %5 = ptrtoint ptr %gpio_mode2 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %gpio_mode2, align 2
  %call3 = call fastcc i32 @xr_get_reg_uart(ptr noundef %port, i16 noundef zeroext %6, ptr noundef nonnull %gpio_mode)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %disable.i = getelementptr inbounds %struct.xr_type, ptr %10, i32 0, i32 20
  %11 = ptrtoint ptr %disable.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %disable.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i = tail call i32 %12(ptr noundef %port) #8
  br label %xr_uart_disable.exit

if.end.i:                                         ; preds = %if.end
  %uart_enable.i.i = getelementptr inbounds %struct.xr_type, ptr %10, i32 0, i32 4
  %13 = ptrtoint ptr %uart_enable.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %uart_enable.i.i, align 4
  %channel.i.i.i = getelementptr inbounds %struct.xr_data, ptr %8, i32 0, i32 1
  %15 = ptrtoint ptr %channel.i.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %channel.i.i.i, align 4
  %17 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %port, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 8
  %shl.i.i.i.i.i = shl i32 %22, 8
  %or.i.i.i.i = or i32 %shl.i.i.i.i.i, -2147483648
  %set_reg.i.i.i.i = getelementptr inbounds %struct.xr_type, ptr %10, i32 0, i32 2
  %23 = ptrtoint ptr %set_reg.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %set_reg.i.i.i.i, align 1
  %reg_recipient.i.i.i.i = getelementptr inbounds %struct.xr_type, ptr %10, i32 0, i32 1
  %25 = ptrtoint ptr %reg_recipient.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %reg_recipient.i.i.i.i, align 4
  %27 = or i8 %26, 64
  %conv7.i.i.i.i = zext i8 %16 to i16
  %shl.i.i.i.i = shl nuw i16 %conv7.i.i.i.i, 8
  %or9.i.i.i.i = or i16 %shl.i.i.i.i, %14
  %call11.i.i.i.i = tail call i32 @usb_control_msg(ptr noundef %20, i32 noundef %or.i.i.i.i, i8 noundef zeroext %24, i8 noundef zeroext %27, i16 noundef zeroext 0, i16 noundef zeroext %or9.i.i.i.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %call11.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %do.end.i.i.i.i, label %if.end.i.xr_uart_disable.exit_crit_edge

if.end.i.xr_uart_disable.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xr_uart_disable.exit

do.end.i.i.i.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv8.i.i.i.i = zext i16 %14 to i32
  %dev13.i.i.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13.i.i.i.i, ptr noundef nonnull @.str.1, i32 noundef %conv8.i.i.i.i, i32 noundef %call11.i.i.i.i) #12
  br label %xr_uart_disable.exit

xr_uart_disable.exit:                             ; preds = %do.end.i.i.i.i, %if.end.i.xr_uart_disable.exit_crit_edge, %if.then.i
  %28 = ptrtoint ptr %gpio_mode to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %gpio_mode, align 2
  %30 = and i16 %29, -8
  store i16 %30, ptr %gpio_mode, align 2
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %31 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %c_cflag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %32)
  %tobool7.not = icmp sgt i32 %32, -1
  %and10 = and i32 %32, 4111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %cmp.not = icmp eq i32 %and10, 0
  %or.cond = or i1 %tobool7.not, %cmp.not
  br i1 %or.cond, label %if.else, label %do.body

do.body:                                          ; preds = %xr_uart_disable.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xr_set_flow_mode.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xr_set_flow_mode, %if.then17)) #8
          to label %do.end [label %if.then17], !srcloc !74

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xr_set_flow_mode.__UNIQUE_ID_ddebug244, ptr noundef %dev, ptr noundef nonnull @.str.13) #8
  br label %do.end

do.end:                                           ; preds = %if.then17, %do.body
  %33 = or i16 %30, 1
  %34 = ptrtoint ptr %gpio_mode to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %gpio_mode, align 2
  br label %if.end69

if.else:                                          ; preds = %xr_uart_disable.exit
  %termios = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %35 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %termios, align 4
  %and22 = and i32 %36, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %do.body51, label %if.then24

if.then24:                                        ; preds = %if.else
  %arrayidx = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5, i32 8
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx, align 1
  %arrayidx28 = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5, i32 9
  %39 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx28, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xr_set_flow_mode.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xr_set_flow_mode, %if.then41)) #8
          to label %do.end45 [label %if.then41], !srcloc !74

if.then41:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  %dev42 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xr_set_flow_mode.__UNIQUE_ID_ddebug245, ptr noundef %dev42, ptr noundef nonnull @.str.14) #8
  br label %do.end45

do.end45:                                         ; preds = %if.then41, %if.then24
  %xon_char = getelementptr inbounds %struct.xr_type, ptr %3, i32 0, i32 6
  %41 = ptrtoint ptr %xon_char to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %xon_char, align 4
  %conv46 = zext i8 %38 to i16
  %43 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %driver_data.i.i, align 4
  %channel.i = getelementptr inbounds %struct.xr_data, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %channel.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %channel.i, align 4
  %47 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %44, align 4
  %49 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %port, align 8
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %52, align 8
  %shl.i.i.i = shl i32 %54, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %set_reg.i.i = getelementptr inbounds %struct.xr_type, ptr %48, i32 0, i32 2
  %55 = ptrtoint ptr %set_reg.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %set_reg.i.i, align 1
  %reg_recipient.i.i = getelementptr inbounds %struct.xr_type, ptr %48, i32 0, i32 1
  %57 = ptrtoint ptr %reg_recipient.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %reg_recipient.i.i, align 4
  %59 = or i8 %58, 64
  %conv7.i.i = zext i8 %46 to i16
  %shl.i.i = shl nuw i16 %conv7.i.i, 8
  %or9.i.i = or i16 %shl.i.i, %42
  %call11.i.i = tail call i32 @usb_control_msg(ptr noundef %52, i32 noundef %or.i.i, i8 noundef zeroext %56, i8 noundef zeroext %59, i16 noundef zeroext %conv46, i16 noundef zeroext %or9.i.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i)
  %cmp.i.i = icmp slt i32 %call11.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %do.end45.xr_set_reg_uart.exit_crit_edge

do.end45.xr_set_reg_uart.exit_crit_edge:          ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %xr_set_reg_uart.exit

do.end.i.i:                                       ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #10
  %conv8.i.i = zext i16 %42 to i32
  %dev13.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13.i.i, ptr noundef nonnull @.str.1, i32 noundef %conv8.i.i, i32 noundef %call11.i.i) #12
  br label %xr_set_reg_uart.exit

xr_set_reg_uart.exit:                             ; preds = %do.end.i.i, %do.end45.xr_set_reg_uart.exit_crit_edge
  %xoff_char = getelementptr inbounds %struct.xr_type, ptr %3, i32 0, i32 7
  %60 = ptrtoint ptr %xoff_char to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %xoff_char, align 2
  %conv48 = zext i8 %40 to i16
  %62 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %driver_data.i.i, align 4
  %channel.i124 = getelementptr inbounds %struct.xr_data, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %channel.i124 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %channel.i124, align 4
  %66 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %63, align 4
  %68 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %port, align 8
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %71, align 8
  %shl.i.i.i125 = shl i32 %73, 8
  %or.i.i126 = or i32 %shl.i.i.i125, -2147483648
  %set_reg.i.i127 = getelementptr inbounds %struct.xr_type, ptr %67, i32 0, i32 2
  %74 = ptrtoint ptr %set_reg.i.i127 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %set_reg.i.i127, align 1
  %reg_recipient.i.i128 = getelementptr inbounds %struct.xr_type, ptr %67, i32 0, i32 1
  %76 = ptrtoint ptr %reg_recipient.i.i128 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %reg_recipient.i.i128, align 4
  %78 = or i8 %77, 64
  %conv7.i.i129 = zext i8 %65 to i16
  %shl.i.i130 = shl nuw i16 %conv7.i.i129, 8
  %or9.i.i131 = or i16 %shl.i.i130, %61
  %call11.i.i132 = tail call i32 @usb_control_msg(ptr noundef %71, i32 noundef %or.i.i126, i8 noundef zeroext %75, i8 noundef zeroext %78, i16 noundef zeroext %conv48, i16 noundef zeroext %or9.i.i131, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i132)
  %cmp.i.i133 = icmp slt i32 %call11.i.i132, 0
  br i1 %cmp.i.i133, label %do.end.i.i136, label %xr_set_reg_uart.exit.if.end69_crit_edge

xr_set_reg_uart.exit.if.end69_crit_edge:          ; preds = %xr_set_reg_uart.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

do.end.i.i136:                                    ; preds = %xr_set_reg_uart.exit
  call void @__sanitizer_cov_trace_pc() #10
  %conv8.i.i134 = zext i16 %61 to i32
  %dev13.i.i135 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13.i.i135, ptr noundef nonnull @.str.1, i32 noundef %conv8.i.i134, i32 noundef %call11.i.i132) #12
  br label %if.end69

do.body51:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xr_set_flow_mode.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xr_set_flow_mode, %if.then63)) #8
          to label %if.end69 [label %if.then63], !srcloc !74

if.then63:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #10
  %dev64 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xr_set_flow_mode.__UNIQUE_ID_ddebug246, ptr noundef %dev64, ptr noundef nonnull @.str.15) #8
  br label %if.end69

if.end69:                                         ; preds = %if.then63, %do.body51, %do.end.i.i136, %xr_set_reg_uart.exit.if.end69_crit_edge, %do.end
  %flow.0 = phi i16 [ 1, %do.end ], [ 0, %if.then63 ], [ 2, %xr_set_reg_uart.exit.if.end69_crit_edge ], [ 2, %do.end.i.i136 ], [ 0, %do.body51 ]
  %flow_control = getelementptr inbounds %struct.xr_type, ptr %3, i32 0, i32 5
  %79 = ptrtoint ptr %flow_control to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %flow_control, align 2
  %81 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %driver_data.i.i, align 4
  %channel.i140 = getelementptr inbounds %struct.xr_data, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %channel.i140 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %channel.i140, align 4
  %85 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %82, align 4
  %87 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %port, align 8
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %88, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %90, align 8
  %shl.i.i.i141 = shl i32 %92, 8
  %or.i.i142 = or i32 %shl.i.i.i141, -2147483648
  %set_reg.i.i143 = getelementptr inbounds %struct.xr_type, ptr %86, i32 0, i32 2
  %93 = ptrtoint ptr %set_reg.i.i143 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %set_reg.i.i143, align 1
  %reg_recipient.i.i144 = getelementptr inbounds %struct.xr_type, ptr %86, i32 0, i32 1
  %95 = ptrtoint ptr %reg_recipient.i.i144 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %reg_recipient.i.i144, align 4
  %97 = or i8 %96, 64
  %conv7.i.i145 = zext i8 %84 to i16
  %shl.i.i146 = shl nuw i16 %conv7.i.i145, 8
  %or9.i.i147 = or i16 %shl.i.i146, %80
  %call11.i.i148 = tail call i32 @usb_control_msg(ptr noundef %90, i32 noundef %or.i.i142, i8 noundef zeroext %94, i8 noundef zeroext %97, i16 noundef zeroext %flow.0, i16 noundef zeroext %or9.i.i147, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i148)
  %cmp.i.i149 = icmp slt i32 %call11.i.i148, 0
  br i1 %cmp.i.i149, label %do.end.i.i152, label %if.end69.xr_set_reg_uart.exit154_crit_edge

if.end69.xr_set_reg_uart.exit154_crit_edge:       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %xr_set_reg_uart.exit154

do.end.i.i152:                                    ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  %conv8.i.i150 = zext i16 %80 to i32
  %dev13.i.i151 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13.i.i151, ptr noundef nonnull @.str.1, i32 noundef %conv8.i.i150, i32 noundef %call11.i.i148) #12
  br label %xr_set_reg_uart.exit154

xr_set_reg_uart.exit154:                          ; preds = %do.end.i.i152, %if.end69.xr_set_reg_uart.exit154_crit_edge
  %98 = ptrtoint ptr %gpio_mode2 to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %gpio_mode2, align 2
  %100 = ptrtoint ptr %gpio_mode to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %gpio_mode, align 2
  %102 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %driver_data.i.i, align 4
  %channel.i156 = getelementptr inbounds %struct.xr_data, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %channel.i156 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %channel.i156, align 4
  %106 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %103, align 4
  %108 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %port, align 8
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %109, align 4
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %111, align 8
  %shl.i.i.i157 = shl i32 %113, 8
  %or.i.i158 = or i32 %shl.i.i.i157, -2147483648
  %set_reg.i.i159 = getelementptr inbounds %struct.xr_type, ptr %107, i32 0, i32 2
  %114 = ptrtoint ptr %set_reg.i.i159 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %set_reg.i.i159, align 1
  %reg_recipient.i.i160 = getelementptr inbounds %struct.xr_type, ptr %107, i32 0, i32 1
  %116 = ptrtoint ptr %reg_recipient.i.i160 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %reg_recipient.i.i160, align 4
  %118 = or i8 %117, 64
  %conv7.i.i161 = zext i8 %105 to i16
  %shl.i.i162 = shl nuw i16 %conv7.i.i161, 8
  %or9.i.i163 = or i16 %shl.i.i162, %99
  %call11.i.i164 = tail call i32 @usb_control_msg(ptr noundef %111, i32 noundef %or.i.i158, i8 noundef zeroext %115, i8 noundef zeroext %118, i16 noundef zeroext %101, i16 noundef zeroext %or9.i.i163, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i164)
  %cmp.i.i165 = icmp slt i32 %call11.i.i164, 0
  br i1 %cmp.i.i165, label %do.end.i.i168, label %xr_set_reg_uart.exit154.xr_set_reg_uart.exit170_crit_edge

xr_set_reg_uart.exit154.xr_set_reg_uart.exit170_crit_edge: ; preds = %xr_set_reg_uart.exit154
  call void @__sanitizer_cov_trace_pc() #10
  br label %xr_set_reg_uart.exit170

do.end.i.i168:                                    ; preds = %xr_set_reg_uart.exit154
  call void @__sanitizer_cov_trace_pc() #10
  %conv8.i.i166 = zext i16 %99 to i32
  %dev13.i.i167 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13.i.i167, ptr noundef nonnull @.str.1, i32 noundef %conv8.i.i166, i32 noundef %call11.i.i164) #12
  br label %xr_set_reg_uart.exit170

xr_set_reg_uart.exit170:                          ; preds = %do.end.i.i168, %xr_set_reg_uart.exit154.xr_set_reg_uart.exit170_crit_edge
  %119 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %driver_data.i.i, align 4
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %120, align 4
  %enable.i = getelementptr inbounds %struct.xr_type, ptr %122, i32 0, i32 19
  %123 = ptrtoint ptr %enable.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %enable.i, align 4
  %tobool.not.i172 = icmp eq ptr %124, null
  br i1 %tobool.not.i172, label %if.end.i186, label %if.then.i174

if.then.i174:                                     ; preds = %xr_set_reg_uart.exit170
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i173 = tail call i32 %124(ptr noundef %port) #8
  br label %xr_uart_enable.exit

if.end.i186:                                      ; preds = %xr_set_reg_uart.exit170
  %uart_enable.i.i175 = getelementptr inbounds %struct.xr_type, ptr %122, i32 0, i32 4
  %125 = ptrtoint ptr %uart_enable.i.i175 to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %uart_enable.i.i175, align 4
  %channel.i.i.i176 = getelementptr inbounds %struct.xr_data, ptr %120, i32 0, i32 1
  %127 = ptrtoint ptr %channel.i.i.i176 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %channel.i.i.i176, align 4
  %129 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %port, align 8
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %130, align 4
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %132, align 8
  %shl.i.i.i.i.i177 = shl i32 %134, 8
  %or.i.i.i.i178 = or i32 %shl.i.i.i.i.i177, -2147483648
  %set_reg.i.i.i.i179 = getelementptr inbounds %struct.xr_type, ptr %122, i32 0, i32 2
  %135 = ptrtoint ptr %set_reg.i.i.i.i179 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %set_reg.i.i.i.i179, align 1
  %reg_recipient.i.i.i.i180 = getelementptr inbounds %struct.xr_type, ptr %122, i32 0, i32 1
  %137 = ptrtoint ptr %reg_recipient.i.i.i.i180 to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %reg_recipient.i.i.i.i180, align 4
  %139 = or i8 %138, 64
  %conv7.i.i.i.i181 = zext i8 %128 to i16
  %shl.i.i.i.i182 = shl nuw i16 %conv7.i.i.i.i181, 8
  %or9.i.i.i.i183 = or i16 %shl.i.i.i.i182, %126
  %call11.i.i.i.i184 = tail call i32 @usb_control_msg(ptr noundef %132, i32 noundef %or.i.i.i.i178, i8 noundef zeroext %136, i8 noundef zeroext %139, i16 noundef zeroext 3, i16 noundef zeroext %or9.i.i.i.i183, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i.i.i184)
  %cmp.i.i.i.i185 = icmp slt i32 %call11.i.i.i.i184, 0
  br i1 %cmp.i.i.i.i185, label %do.end.i.i.i.i189, label %if.end.i186.xr_uart_enable.exit_crit_edge

if.end.i186.xr_uart_enable.exit_crit_edge:        ; preds = %if.end.i186
  call void @__sanitizer_cov_trace_pc() #10
  br label %xr_uart_enable.exit

do.end.i.i.i.i189:                                ; preds = %if.end.i186
  call void @__sanitizer_cov_trace_pc() #10
  %conv8.i.i.i.i187 = zext i16 %126 to i32
  %dev13.i.i.i.i188 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13.i.i.i.i188, ptr noundef nonnull @.str.1, i32 noundef %conv8.i.i.i.i187, i32 noundef %call11.i.i.i.i184) #12
  br label %xr_uart_enable.exit

xr_uart_enable.exit:                              ; preds = %do.end.i.i.i.i189, %if.end.i186.xr_uart_enable.exit_crit_edge, %if.then.i174
  %140 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %c_cflag, align 4
  %and76 = and i32 %141, 4111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %cmp77 = icmp eq i32 %and76, 0
  br i1 %cmp77, label %if.then79, label %if.else80

if.then79:                                        ; preds = %xr_uart_enable.exit
  %142 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %driver_data.i.i, align 4
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %143, align 4
  %gpio_set30.i.i = getelementptr inbounds %struct.xr_type, ptr %145, i32 0, i32 11
  %146 = ptrtoint ptr %gpio_set30.i.i to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %gpio_set30.i.i, align 2
  %channel.i45.i.i = getelementptr inbounds %struct.xr_data, ptr %143, i32 0, i32 1
  %148 = ptrtoint ptr %channel.i45.i.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %channel.i45.i.i, align 4
  %150 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %port, align 8
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %151, align 4
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %153, align 8
  %shl.i.i.i46.i.i = shl i32 %155, 8
  %or.i.i47.i.i = or i32 %shl.i.i.i46.i.i, -2147483648
  %set_reg.i.i48.i.i = getelementptr inbounds %struct.xr_type, ptr %145, i32 0, i32 2
  %156 = ptrtoint ptr %set_reg.i.i48.i.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %set_reg.i.i48.i.i, align 1
  %reg_recipient.i.i49.i.i = getelementptr inbounds %struct.xr_type, ptr %145, i32 0, i32 1
  %158 = ptrtoint ptr %reg_recipient.i.i49.i.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %reg_recipient.i.i49.i.i, align 4
  %160 = or i8 %159, 64
  %conv7.i.i50.i.i = zext i8 %149 to i16
  %shl.i.i51.i.i = shl nuw i16 %conv7.i.i50.i.i, 8
  %or9.i.i52.i.i = or i16 %shl.i.i51.i.i, %147
  %call11.i.i53.i.i = tail call i32 @usb_control_msg(ptr noundef %153, i32 noundef %or.i.i47.i.i, i8 noundef zeroext %157, i8 noundef zeroext %160, i16 noundef zeroext 40, i16 noundef zeroext %or9.i.i52.i.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i53.i.i)
  %cmp.i.i54.i.i = icmp slt i32 %call11.i.i53.i.i, 0
  br i1 %cmp.i.i54.i.i, label %if.then79.cleanup.sink.split_crit_edge, label %if.then79.cleanup_crit_edge

if.then79.cleanup_crit_edge:                      ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then79.cleanup.sink.split_crit_edge:           ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.else80:                                        ; preds = %xr_uart_enable.exit
  %tobool81.not = icmp eq ptr %old_termios, null
  br i1 %tobool81.not, label %if.else80.cleanup_crit_edge, label %land.lhs.true82

if.else80.cleanup_crit_edge:                      ; preds = %if.else80
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true82:                                  ; preds = %if.else80
  %c_cflag83 = getelementptr inbounds %struct.ktermios, ptr %old_termios, i32 0, i32 2
  %161 = ptrtoint ptr %c_cflag83 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %c_cflag83, align 4
  %and84 = and i32 %162, 4111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %cmp85 = icmp eq i32 %and84, 0
  br i1 %cmp85, label %if.then87, label %land.lhs.true82.cleanup_crit_edge

land.lhs.true82.cleanup_crit_edge:                ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then87:                                        ; preds = %land.lhs.true82
  %163 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %driver_data.i.i, align 4
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %164, align 4
  %gpio_clear.i.i = getelementptr inbounds %struct.xr_type, ptr %166, i32 0, i32 12
  %167 = ptrtoint ptr %gpio_clear.i.i to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %gpio_clear.i.i, align 4
  %channel.i.i.i193 = getelementptr inbounds %struct.xr_data, ptr %164, i32 0, i32 1
  %169 = ptrtoint ptr %channel.i.i.i193 to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %channel.i.i.i193, align 4
  %171 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %port, align 8
  %173 = ptrtoint ptr %172 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %172, align 4
  %175 = ptrtoint ptr %174 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %174, align 8
  %shl.i.i.i.i.i194 = shl i32 %176, 8
  %or.i.i.i.i195 = or i32 %shl.i.i.i.i.i194, -2147483648
  %set_reg.i.i.i.i196 = getelementptr inbounds %struct.xr_type, ptr %166, i32 0, i32 2
  %177 = ptrtoint ptr %set_reg.i.i.i.i196 to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %set_reg.i.i.i.i196, align 1
  %reg_recipient.i.i.i.i197 = getelementptr inbounds %struct.xr_type, ptr %166, i32 0, i32 1
  %179 = ptrtoint ptr %reg_recipient.i.i.i.i197 to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %reg_recipient.i.i.i.i197, align 4
  %181 = or i8 %180, 64
  %conv7.i.i.i.i198 = zext i8 %170 to i16
  %shl.i.i.i.i199 = shl nuw i16 %conv7.i.i.i.i198, 8
  %or9.i.i.i.i200 = or i16 %shl.i.i.i.i199, %168
  %call11.i.i.i.i201 = tail call i32 @usb_control_msg(ptr noundef %174, i32 noundef %or.i.i.i.i195, i8 noundef zeroext %178, i8 noundef zeroext %181, i16 noundef zeroext 40, i16 noundef zeroext %or9.i.i.i.i200, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i.i.i201)
  %cmp.i.i.i.i202 = icmp slt i32 %call11.i.i.i.i201, 0
  br i1 %cmp.i.i.i.i202, label %if.then87.cleanup.sink.split_crit_edge, label %if.then87.cleanup_crit_edge

if.then87.cleanup_crit_edge:                      ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then87.cleanup.sink.split_crit_edge:           ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then87.cleanup.sink.split_crit_edge, %if.then79.cleanup.sink.split_crit_edge
  %.sink = phi i16 [ %147, %if.then79.cleanup.sink.split_crit_edge ], [ %168, %if.then87.cleanup.sink.split_crit_edge ]
  %call11.i.i.i.i201.sink = phi i32 [ %call11.i.i53.i.i, %if.then79.cleanup.sink.split_crit_edge ], [ %call11.i.i.i.i201, %if.then87.cleanup.sink.split_crit_edge ]
  %conv8.i.i55.i.i204 = zext i16 %.sink to i32
  %dev13.i.i56.i.i205 = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13.i.i56.i.i205, ptr noundef nonnull @.str.1, i32 noundef %conv8.i.i55.i.i204, i32 noundef %call11.i.i.i.i201.sink) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then87.cleanup_crit_edge, %land.lhs.true82.cleanup_crit_edge, %if.else80.cleanup_crit_edge, %if.then79.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %gpio_mode) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xr_get_reg_uart(ptr noundef %port, i16 noundef zeroext %reg, ptr nocapture noundef writeonly %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %channel = getelementptr inbounds %struct.xr_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %channel, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %port, align 8
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %9)
  %cmp.i = icmp eq i32 %9, 8
  %..i = select i1 %cmp.i, i32 1, i32 2
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %..i, i32 noundef 3264) #13
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %entry.xr_get_reg.exit_crit_edge, label %if.end5.i

entry.xr_get_reg.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %xr_get_reg.exit

if.end5.i:                                        ; preds = %entry
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 8
  %shl.i.i = shl i32 %13, 8
  %or8.i = or i32 %shl.i.i, -2147483520
  %get_reg.i = getelementptr inbounds %struct.xr_type, ptr %5, i32 0, i32 3
  %14 = ptrtoint ptr %get_reg.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %get_reg.i, align 2
  %reg_recipient.i = getelementptr inbounds %struct.xr_type, ptr %5, i32 0, i32 1
  %16 = ptrtoint ptr %reg_recipient.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %reg_recipient.i, align 4
  %18 = or i8 %17, -64
  %conv11.i = zext i8 %3 to i16
  %shl.i = shl nuw i16 %conv11.i, 8
  %or13.i = or i16 %shl.i, %reg
  %conv15.i = trunc i32 %..i to i16
  %call16.i = tail call i32 @usb_control_msg(ptr noundef %11, i32 noundef %or8.i, i8 noundef zeroext %15, i8 noundef zeroext %18, i16 noundef zeroext 0, i16 noundef zeroext %or13.i, ptr noundef nonnull %call9.i.i, i16 noundef zeroext %conv15.i, i32 noundef 5000) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call16.i, i32 %..i)
  %cmp17.i = icmp eq i32 %call16.i, %..i
  br i1 %cmp17.i, label %if.then19.i, label %do.end.i

if.then19.i:                                      ; preds = %if.end5.i
  br i1 %cmp.i, label %if.else24.i, label %if.then22.i

if.then22.i:                                      ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %call9.i.i, align 128
  %21 = tail call i16 @llvm.bswap.i16(i16 %20) #8
  br label %if.end26.i

if.else24.i:                                      ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %call9.i.i, align 128
  %conv25.i = zext i8 %23 to i16
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.else24.i, %if.then22.i
  %storemerge.i = phi i16 [ %conv25.i, %if.else24.i ], [ %21, %if.then22.i ]
  %24 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %storemerge.i, ptr %val, align 2
  br label %if.end34.i

do.end.i:                                         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv12.i = zext i16 %reg to i32
  %dev28.i = getelementptr inbounds %struct.usb_serial_port, ptr %port, i32 0, i32 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev28.i, ptr noundef nonnull @.str.16, i32 noundef %conv12.i, i32 noundef %call16.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call16.i)
  %cmp30.i = icmp sgt i32 %call16.i, -1
  %spec.store.select.i = select i1 %cmp30.i, i32 -5, i32 %call16.i
  br label %if.end34.i

if.end34.i:                                       ; preds = %do.end.i, %if.end26.i
  %ret.0.i = phi i32 [ 0, %if.end26.i ], [ %spec.store.select.i, %do.end.i ]
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #8
  br label %xr_get_reg.exit

xr_get_reg.exit:                                  ; preds = %if.end34.i, %entry.xr_get_reg.exit_crit_edge
  %retval.0.i = phi i32 [ %ret.0.i, %if.end34.i ], [ -12, %entry.xr_get_reg.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !17, !19, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31, !33, !35, !36, !37, !38, !40, !41, !42, !43, !45, !46, !47, !49, !50, !52, !53, !55, !56, !57, !58, !60, !61, !62, !63}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @__initcall__kmod_xr_serial__247_1018_usb_serial_module_init6, !1, !"__initcall__kmod_xr_serial__247_1018_usb_serial_module_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/serial/xr_serial.c", i32 1018, i32 1}
!2 = !{ptr @__exitcall_usb_serial_module_exit, !1, !"__exitcall_usb_serial_module_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author248, !4, !"__UNIQUE_ID_author248", i1 false, i1 false}
!4 = !{!"../drivers/usb/serial/xr_serial.c", i32 1020, i32 1}
!5 = !{ptr @__UNIQUE_ID_description249, !6, !"__UNIQUE_ID_description249", i1 false, i1 false}
!6 = !{!"../drivers/usb/serial/xr_serial.c", i32 1021, i32 1}
!7 = !{ptr @__UNIQUE_ID_file250, !8, !"__UNIQUE_ID_file250", i1 false, i1 false}
!8 = !{!"../drivers/usb/serial/xr_serial.c", i32 1022, i32 1}
!9 = !{ptr @__UNIQUE_ID_license251, !8, !"__UNIQUE_ID_license251", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @id_table, !12, !"id_table", i1 false, i1 false}
!12 = !{!"../drivers/usb/serial/xr_serial.c", i32 979, i32 35}
!13 = !{ptr @serial_drivers, !14, !"serial_drivers", i1 false, i1 false}
!14 = !{!"../drivers/usb/serial/xr_serial.c", i32 1014, i32 41}
!15 = !{ptr @xr_device, !16, !"xr_device", i1 false, i1 false}
!16 = !{!"../drivers/usb/serial/xr_serial.c", i32 995, i32 33}
!17 = !{ptr @xr_types, !18, !"xr_types", i1 false, i1 false}
!18 = !{!"../drivers/usb/serial/xr_serial.c", i32 148, i32 29}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/usb/serial/xr_serial.c", i32 254, i32 3}
!21 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @xr_set_reg._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @xr_set_reg._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/usb/serial/xr_serial.c", i32 578, i32 2}
!29 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @xr21v141x_set_baudrate.__UNIQUE_ID_ddebug243, !28, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!31 = !{ptr @xr21v141x_txrx_clk_masks, !32, !"xr21v141x_txrx_clk_masks", i1 false, i1 false}
!32 = !{!"../drivers/usb/serial/xr_serial.c", i32 523, i32 38}
!33 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/usb/serial/xr_serial.c", i32 838, i32 3}
!35 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @xr_open._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @xr_open._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/usb/serial/xr_serial.c", i32 806, i32 3}
!40 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @xr_cdc_set_line_coding._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @xr_cdc_set_line_coding._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/usb/serial/xr_serial.c", i32 648, i32 3}
!45 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @xr_set_flow_mode.__UNIQUE_ID_ddebug244, !44, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!47 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/usb/serial/xr_serial.c", i32 655, i32 3}
!49 = !{ptr @xr_set_flow_mode.__UNIQUE_ID_ddebug245, !48, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!50 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/usb/serial/xr_serial.c", i32 661, i32 3}
!52 = !{ptr @xr_set_flow_mode.__UNIQUE_ID_ddebug246, !51, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!53 = !{ptr @.str.16, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/usb/serial/xr_serial.c", i32 290, i32 3}
!55 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @xr_get_reg._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @xr_get_reg._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.18, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/usb/serial/xr_serial.c", i32 517, i32 2}
!60 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @xr_break_ctl.__UNIQUE_ID_ddebug238, !59, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!62 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{i8 0, i8 2}
!74 = !{i64 2148714036, i64 2148714041, i64 2148714054, i64 2148714098, i64 2148714132, i64 2148714153}
!75 = !{!"auto-init"}
