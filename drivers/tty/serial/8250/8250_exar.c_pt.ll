; ModuleID = '/llk/IR_all_yes/drivers/tty/serial/8250/8250_exar.c_pt.bc'
source_filename = "../drivers/tty/serial/8250/8250_exar.c"
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
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.exar8250_board = type { i32, i32, ptr, ptr }
%struct.software_node = type { ptr, ptr, ptr }
%struct.property_entry = type { ptr, i32, i8, i32, %union.anon.78 }
%union.anon.78 = type { %union.anon.79 }
%union.anon.79 = type { [1 x i64] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.uart_8250_port = type { %struct.uart_port, %struct.timer_list, %struct.list_head, i32, i16, i8, i32, i8, i8, i8, i8, i8, i8, i32, i8, i8, ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, i32 }
%struct.uart_port = type { %struct.spinlock, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, ptr, %struct.uart_icount, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.serial_rs485, ptr, %struct.serial_iso7816, ptr }
%struct.uart_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.serial_rs485 = type { i32, i32, i32, [5 x i32] }
%struct.serial_iso7816 = type { i32, i32, i32, i32, i32, [5 x i32] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.73, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%union.anon.73 = type { ptr }
%struct.exar8250 = type { i32, ptr, ptr, [0 x i32] }
%struct.uart_state = type { %struct.tty_port, i32, %struct.circ_buf, %struct.atomic_t, %struct.wait_queue_head, ptr }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.37, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.37 = type { ptr }
%struct.llist_head = type { ptr }
%struct.circ_buf = type { ptr, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.pdev_archdata = type { ptr }

@__initcall__kmod_8250_exar__239_880_exar_pci_driver_init6 = internal global ptr @exar_pci_driver_init, section ".initcall6.init", align 4
@exar_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @exar_pci_tbl, ptr @exar_pci_probe, ptr @exar_pci_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @exar_pci_pm, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_exar_pci_driver_exit = internal global ptr @exar_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file240 = internal constant [49 x i8] c"8250_exar.file=drivers/tty/serial/8250/8250_exar\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [22 x i8] c"8250_exar.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description242 = internal constant [41 x i8] c"8250_exar.description=Exar Serial Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author243 = internal constant [67 x i8] c"8250_exar.author=Sudip Mukherjee <sudip.mukherjee@codethink.co.uk>\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"8250_exar\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"exar_serial\00", [20 x i8] zeroinitializer }, align 32
@exar_pci_tbl = internal constant { [36 x %struct.pci_device_id], [288 x i8] } { [36 x %struct.pci_device_id] [%struct.pci_device_id { i32 18767, i32 4178, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @acces_com_2x to i32), i32 0 }, %struct.pci_device_id { i32 18767, i32 4189, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @acces_com_4x to i32), i32 0 }, %struct.pci_device_id { i32 18767, i32 4204, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @acces_com_8x to i32), i32 0 }, %struct.pci_device_id { i32 18767, i32 4264, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @acces_com_8x to i32), i32 0 }, %struct.pci_device_id { i32 18767, i32 4306, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @acces_com_2x to i32), i32 0 }, %struct.pci_device_id { i32 18767, i32 4315, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @acces_com_4x to i32), i32 0 }, %struct.pci_device_id { i32 18767, i32 4330, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @acces_com_8x to i32), i32 0 }, %struct.pci_device_id { i32 5032, i32 338, i32 4804, i32 768, i32 0, i32 0, i32 ptrtoint (ptr @pbn_connect to i32), i32 0 }, %struct.pci_device_id { i32 5032, i32 340, i32 4804, i32 769, i32 0, i32 0, i32 ptrtoint (ptr @pbn_connect to i32), i32 0 }, %struct.pci_device_id { i32 5032, i32 344, i32 4804, i32 770, i32 0, i32 0, i32 ptrtoint (ptr @pbn_connect to i32), i32 0 }, %struct.pci_device_id { i32 5032, i32 338, i32 4804, i32 784, i32 0, i32 0, i32 ptrtoint (ptr @pbn_connect to i32), i32 0 }, %struct.pci_device_id { i32 5032, i32 340, i32 4804, i32 785, i32 0, i32 0, i32 ptrtoint (ptr @pbn_connect to i32), i32 0 }, %struct.pci_device_id { i32 5032, i32 344, i32 4804, i32 786, i32 0, i32 0, i32 ptrtoint (ptr @pbn_connect to i32), i32 0 }, %struct.pci_device_id { i32 5032, i32 338, i32 4804, i32 800, i32 0, i32 0, i32 ptrtoint (ptr @pbn_connect to i32), i32 0 }, %struct.pci_device_id { i32 5032, i32 340, i32 4804, i32 801, i32 0, i32 0, i32 ptrtoint (ptr @pbn_connect to i32), i32 0 }, %struct.pci_device_id { i32 5032, i32 344, i32 4804, i32 802, i32 0, i32 0, i32 ptrtoint (ptr @pbn_connect to i32), i32 0 }, %struct.pci_device_id { i32 5032, i32 338, i32 4804, i32 816, i32 0, i32 0, i32 ptrtoint (ptr @pbn_connect to i32), i32 0 }, %struct.pci_device_id { i32 5032, i32 340, i32 4804, i32 817, i32 0, i32 0, i32 ptrtoint (ptr @pbn_connect to i32), i32 0 }, %struct.pci_device_id { i32 5032, i32 344, i32 4804, i32 818, i32 0, i32 0, i32 ptrtoint (ptr @pbn_connect to i32), i32 0 }, %struct.pci_device_id { i32 5032, i32 338, i32 4116, i32 980, i32 0, i32 0, i32 ptrtoint (ptr @pbn_exar_ibm_saturn to i32), i32 0 }, %struct.pci_device_id { i32 5032, i32 338, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @pbn_exar_XR17C15x to i32), i32 0 }, %struct.pci_device_id { i32 5032, i32 340, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @pbn_exar_XR17C15x to i32), i32 0 }, %struct.pci_device_id { i32 5032, i32 344, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @pbn_exar_XR17C15x to i32), i32 0 }, %struct.pci_device_id { i32 5032, i32 850, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @pbn_exar_XR17V35x to i32), i32 0 }, %struct.pci_device_id { i32 5032, i32 852, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @pbn_exar_XR17V35x to i32), i32 0 }, %struct.pci_device_id { i32 5032, i32 856, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @pbn_exar_XR17V35x to i32), i32 0 }, %struct.pci_device_id { i32 5032, i32 17240, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @pbn_exar_XR17V4358 to i32), i32 0 }, %struct.pci_device_id { i32 5032, i32 33624, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @pbn_exar_XR17V8358 to i32), i32 0 }, %struct.pci_device_id { i32 6391, i32 34, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @pbn_fastcom35x_2 to i32), i32 0 }, %struct.pci_device_id { i32 6391, i32 32, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @pbn_fastcom35x_4 to i32), i32 0 }, %struct.pci_device_id { i32 6391, i32 33, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @pbn_fastcom35x_8 to i32), i32 0 }, %struct.pci_device_id { i32 6391, i32 4, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @pbn_fastcom335_2 to i32), i32 0 }, %struct.pci_device_id { i32 6391, i32 2, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @pbn_fastcom335_4 to i32), i32 0 }, %struct.pci_device_id { i32 6391, i32 10, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @pbn_fastcom335_4 to i32), i32 0 }, %struct.pci_device_id { i32 6391, i32 11, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @pbn_fastcom335_8 to i32), i32 0 }, %struct.pci_device_id zeroinitializer], [288 x i8] zeroinitializer }, align 32
@exar_pci_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @exar_suspend, ptr @exar_resume, ptr @exar_suspend, ptr @exar_resume, ptr @exar_suspend, ptr @exar_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@acces_com_2x = internal constant { %struct.exar8250_board, [16 x i8] } { %struct.exar8250_board { i32 2, i32 0, ptr @pci_xr17c154_setup, ptr null }, [16 x i8] zeroinitializer }, align 32
@acces_com_4x = internal constant { %struct.exar8250_board, [16 x i8] } { %struct.exar8250_board { i32 4, i32 0, ptr @pci_xr17c154_setup, ptr null }, [16 x i8] zeroinitializer }, align 32
@acces_com_8x = internal constant { %struct.exar8250_board, [16 x i8] } { %struct.exar8250_board { i32 8, i32 0, ptr @pci_xr17c154_setup, ptr null }, [16 x i8] zeroinitializer }, align 32
@pbn_connect = internal constant { %struct.exar8250_board, [16 x i8] } { %struct.exar8250_board { i32 0, i32 0, ptr @pci_connect_tech_setup, ptr null }, [16 x i8] zeroinitializer }, align 32
@pbn_exar_ibm_saturn = internal constant { %struct.exar8250_board, [16 x i8] } { %struct.exar8250_board { i32 1, i32 0, ptr @pci_xr17c154_setup, ptr null }, [16 x i8] zeroinitializer }, align 32
@pbn_exar_XR17C15x = internal constant { %struct.exar8250_board, [16 x i8] } { %struct.exar8250_board { i32 0, i32 0, ptr @pci_xr17c154_setup, ptr null }, [16 x i8] zeroinitializer }, align 32
@pbn_exar_XR17V35x = internal constant { %struct.exar8250_board, [16 x i8] } { %struct.exar8250_board { i32 0, i32 0, ptr @pci_xr17v35x_setup, ptr @pci_xr17v35x_exit }, [16 x i8] zeroinitializer }, align 32
@pbn_exar_XR17V4358 = internal constant { %struct.exar8250_board, [16 x i8] } { %struct.exar8250_board { i32 12, i32 0, ptr @pci_xr17v35x_setup, ptr @pci_xr17v35x_exit }, [16 x i8] zeroinitializer }, align 32
@pbn_exar_XR17V8358 = internal constant { %struct.exar8250_board, [16 x i8] } { %struct.exar8250_board { i32 16, i32 0, ptr @pci_xr17v35x_setup, ptr @pci_xr17v35x_exit }, [16 x i8] zeroinitializer }, align 32
@pbn_fastcom35x_2 = internal constant { %struct.exar8250_board, [16 x i8] } { %struct.exar8250_board { i32 2, i32 0, ptr @pci_xr17v35x_setup, ptr @pci_xr17v35x_exit }, [16 x i8] zeroinitializer }, align 32
@pbn_fastcom35x_4 = internal constant { %struct.exar8250_board, [16 x i8] } { %struct.exar8250_board { i32 4, i32 0, ptr @pci_xr17v35x_setup, ptr @pci_xr17v35x_exit }, [16 x i8] zeroinitializer }, align 32
@pbn_fastcom35x_8 = internal constant { %struct.exar8250_board, [16 x i8] } { %struct.exar8250_board { i32 8, i32 0, ptr @pci_xr17v35x_setup, ptr @pci_xr17v35x_exit }, [16 x i8] zeroinitializer }, align 32
@pbn_fastcom335_2 = internal constant { %struct.exar8250_board, [16 x i8] } { %struct.exar8250_board { i32 2, i32 0, ptr @pci_fastcom335_setup, ptr null }, [16 x i8] zeroinitializer }, align 32
@pbn_fastcom335_4 = internal constant { %struct.exar8250_board, [16 x i8] } { %struct.exar8250_board { i32 4, i32 0, ptr @pci_fastcom335_setup, ptr null }, [16 x i8] zeroinitializer }, align 32
@pbn_fastcom335_8 = internal constant { %struct.exar8250_board, [16 x i8] } { %struct.exar8250_board { i32 8, i32 0, ptr @pci_fastcom335_setup, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gpio_exar\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"exar,first-pin\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ngpios\00", [25 x i8] zeroinitializer }, align 32
@exar_gpio_node = internal constant { %struct.software_node, [20 x i8] } { %struct.software_node { ptr null, ptr null, ptr @exar_gpio_properties }, [20 x i8] zeroinitializer }, align 32
@exar_gpio_properties = internal constant { <{ { ptr, i32, i8, i32, { { [2 x i32] } } }, { ptr, i32, i8, i32, { { [2 x i32] } } }, %struct.property_entry }>, [56 x i8] } { <{ { ptr, i32, i8, i32, { { [2 x i32] } } }, { ptr, i32, i8, i32, { { [2 x i32] } } }, %struct.property_entry }> <{ { ptr, i32, i8, i32, { { [2 x i32] } } } { ptr @.str.3, i32 4, i8 1, i32 2, { { [2 x i32] } } zeroinitializer }, { ptr, i32, i8, i32, { { [2 x i32] } } } { ptr @.str.4, i32 4, i8 1, i32 2, { { [2 x i32] } } { { [2 x i32] } { [2 x i32] [i32 16, i32 0] } } }, %struct.property_entry zeroinitializer }>, [56 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"exar_uart\00", [22 x i8] zeroinitializer }, align 32
@exar_pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.10, i32 659, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to setup port %u\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"exar_pci_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/tty/serial/8250/8250_exar.c\00", [60 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@exar_pci_probe._entry_ptr = internal global ptr @exar_pci_probe._entry, section ".printk_index", align 4
@exar_pci_probe.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.10, ptr @.str.13, i8 0, i8 -90, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Setup PCI port: port %lx, irq %d, type %d\0A\00", [53 x i8] zeroinitializer }, align 32
@exar_pci_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.9, ptr @.str.10, i32 671, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Couldn't register serial port %lx, irq %d, type %d, error %d\0A\00", [34 x i8] zeroinitializer }, align 32
@exar_pci_probe._entry_ptr.16 = internal global ptr @exar_pci_probe._entry.14, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 130, i64 132, i64 136]
@__sancov_gen_cov_switch_values.17 = internal global [5 x i64] [i64 3, i64 8, i64 130, i64 132, i64 136]
@__sancov_gen_cov_switch_values.18 = internal global [5 x i64] [i64 3, i64 8, i64 130, i64 132, i64 136]
@__sancov_gen_cov_switch_values.19 = internal global [5 x i64] [i64 3, i64 8, i64 130, i64 132, i64 136]
@__sancov_gen_cov_switch_values.20 = internal global [6 x i64] [i64 4, i64 16, i64 2, i64 4, i64 10, i64 11]
@___asan_gen_.21 = private unnamed_addr constant [16 x i8] c"exar_pci_driver\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 871, i32 26 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 880, i32 1 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 872, i32 11 }
@___asan_gen_.30 = private unnamed_addr constant [13 x i8] c"exar_pci_tbl\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 824, i32 35 }
@___asan_gen_.33 = private unnamed_addr constant [12 x i8] c"exar_pci_pm\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 723, i32 8 }
@___asan_gen_.36 = private unnamed_addr constant [13 x i8] c"acces_com_2x\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 725, i32 36 }
@___asan_gen_.39 = private unnamed_addr constant [13 x i8] c"acces_com_4x\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 730, i32 36 }
@___asan_gen_.42 = private unnamed_addr constant [13 x i8] c"acces_com_8x\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 735, i32 36 }
@___asan_gen_.45 = private unnamed_addr constant [12 x i8] c"pbn_connect\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 756, i32 36 }
@___asan_gen_.48 = private unnamed_addr constant [20 x i8] c"pbn_exar_ibm_saturn\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 760, i32 36 }
@___asan_gen_.51 = private unnamed_addr constant [18 x i8] c"pbn_exar_XR17C15x\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 765, i32 36 }
@___asan_gen_.54 = private unnamed_addr constant [18 x i8] c"pbn_exar_XR17V35x\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 769, i32 36 }
@___asan_gen_.57 = private unnamed_addr constant [19 x i8] c"pbn_exar_XR17V4358\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 792, i32 36 }
@___asan_gen_.60 = private unnamed_addr constant [19 x i8] c"pbn_exar_XR17V8358\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 798, i32 36 }
@___asan_gen_.63 = private unnamed_addr constant [17 x i8] c"pbn_fastcom35x_2\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 774, i32 36 }
@___asan_gen_.66 = private unnamed_addr constant [17 x i8] c"pbn_fastcom35x_4\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 780, i32 36 }
@___asan_gen_.69 = private unnamed_addr constant [17 x i8] c"pbn_fastcom35x_8\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 786, i32 36 }
@___asan_gen_.72 = private unnamed_addr constant [17 x i8] c"pbn_fastcom335_2\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 741, i32 36 }
@___asan_gen_.75 = private unnamed_addr constant [17 x i8] c"pbn_fastcom335_4\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 746, i32 36 }
@___asan_gen_.78 = private unnamed_addr constant [17 x i8] c"pbn_fastcom335_8\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 751, i32 36 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 361, i32 31 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 474, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 475, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant [15 x i8] c"exar_gpio_node\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 389, i32 35 }
@___asan_gen_.93 = private unnamed_addr constant [21 x i8] c"exar_gpio_properties\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 383, i32 36 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 649, i32 18 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 659, i32 4 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 663, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.123 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.124 = private constant [39 x i8] c"../drivers/tty/serial/8250/8250_exar.c\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 668, i32 4 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @__UNIQUE_ID_author243, ptr @__UNIQUE_ID_description242, ptr @__UNIQUE_ID_file240, ptr @__UNIQUE_ID_license241, ptr @__exitcall_exar_pci_driver_exit, ptr @__initcall__kmod_8250_exar__239_880_exar_pci_driver_init6, ptr @exar_pci_driver_exit, ptr @exar_pci_probe._entry, ptr @exar_pci_probe._entry.14, ptr @exar_pci_probe._entry_ptr, ptr @exar_pci_probe._entry_ptr.16, ptr @exar_pci_driver, ptr @.str, ptr @.str.1, ptr @exar_pci_tbl, ptr @exar_pci_pm, ptr @acces_com_2x, ptr @acces_com_4x, ptr @acces_com_8x, ptr @pbn_connect, ptr @pbn_exar_ibm_saturn, ptr @pbn_exar_XR17C15x, ptr @pbn_exar_XR17V35x, ptr @pbn_exar_XR17V4358, ptr @pbn_exar_XR17V8358, ptr @pbn_fastcom35x_2, ptr @pbn_fastcom35x_4, ptr @pbn_fastcom35x_8, ptr @pbn_fastcom335_2, ptr @pbn_fastcom335_4, ptr @pbn_fastcom335_8, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @exar_gpio_node, ptr @exar_gpio_properties, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exar_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exar_pci_tbl to i32), i32 1152, i32 1440, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exar_pci_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acces_com_2x to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acces_com_4x to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acces_com_8x to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pbn_connect to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pbn_exar_ibm_saturn to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pbn_exar_XR17C15x to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pbn_exar_XR17V35x to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pbn_exar_XR17V4358 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pbn_exar_XR17V8358 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pbn_fastcom35x_2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pbn_fastcom35x_4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pbn_fastcom35x_8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pbn_fastcom335_2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pbn_fastcom335_4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pbn_fastcom335_8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exar_gpio_node to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exar_gpio_properties to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exar_pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exar_pci_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @exar_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @exar_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exar_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @pci_unregister_driver(ptr noundef nonnull @exar_pci_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exar_pci_probe(ptr noundef %pcidev, ptr nocapture noundef readonly %ent) #2 align 64 {
entry:
  %uart = alloca %struct.uart_8250_port, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 584, ptr nonnull %uart) #7
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %ent, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %2 = inttoptr i32 %1 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @pcim_enable_device(ptr noundef %pcidev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %end = getelementptr inbounds %struct.pci_dev, ptr %pcidev, i32 0, i32 47, i32 0, i32 1
  %3 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.end3.cond.end_crit_edge, label %cond.false

if.end3.cond.end_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pcidev, i32 0, i32 47
  %5 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %resource, align 8
  %sub = add i32 %4, 1
  %add = sub i32 %sub, %6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end3.cond.end_crit_edge
  %cond = phi i32 [ %add, %cond.false ], [ 0, %if.end3.cond.end_crit_edge ]
  %reg_shift = getelementptr inbounds %struct.exar8250_board, ptr %2, i32 0, i32 1
  %7 = ptrtoint ptr %reg_shift to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg_shift, align 4
  %add9 = add i32 %8, 3
  %shr = lshr i32 %cond, %add9
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool10.not = icmp eq i32 %10, 0
  br i1 %tobool10.not, label %cond.false13, label %cond.end.cond.end14_crit_edge

cond.end.cond.end14_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end14

cond.false13:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %device = getelementptr inbounds %struct.pci_dev, ptr %pcidev, i32 0, i32 8
  %11 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %device, align 2
  %13 = and i16 %12, 15
  %and = zext i16 %13 to i32
  br label %cond.end14

cond.end14:                                       ; preds = %cond.false13, %cond.end.cond.end14_crit_edge
  %cond15 = phi i32 [ %and, %cond.false13 ], [ %10, %cond.end.cond.end14_crit_edge ]
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pcidev, i32 0, i32 44
  %14 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %cond15, i32 4) #7
  %15 = extractvalue { i32, i1 } %14, 1
  %16 = extractvalue { i32, i1 } %14, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %16, i32 12) #7
  %retval.0.i148 = select i1 %15, i32 -1, i32 %spec.select.i
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %retval.0.i148, i32 noundef 3520) #7
  %tobool18.not = icmp eq ptr %call.i, null
  br i1 %tobool18.not, label %cond.end14.cleanup_crit_edge, label %if.end20

cond.end14.cleanup_crit_edge:                     ; preds = %cond.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end20:                                         ; preds = %cond.end14
  %board21 = getelementptr inbounds %struct.exar8250, ptr %call.i, i32 0, i32 1
  %17 = ptrtoint ptr %board21 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %2, ptr %board21, align 4
  %call22 = tail call ptr @pcim_iomap(ptr noundef %pcidev, i32 noundef 0, i32 noundef 0) #7
  %virt = getelementptr inbounds %struct.exar8250, ptr %call.i, i32 0, i32 2
  %18 = ptrtoint ptr %virt to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call22, ptr %virt, align 4
  %tobool24.not = icmp eq ptr %call22, null
  br i1 %tobool24.not, label %if.end20.cleanup_crit_edge, label %if.end26

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end26:                                         ; preds = %if.end20
  tail call void @pci_set_master(ptr noundef %pcidev) #7
  %call.i149 = tail call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %pcidev, i32 noundef 1, i32 noundef 1, i32 noundef 7, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i149)
  %cmp28 = icmp slt i32 %call.i149, 0
  br i1 %cmp28, label %if.end26.cleanup_crit_edge, label %if.end31

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end31:                                         ; preds = %if.end26
  %19 = call ptr @memset(ptr %uart, i32 0, i32 584)
  %flags = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 33
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 721420288, ptr %flags, align 4
  %call32 = tail call i32 @pci_irq_vector(ptr noundef %pcidev, i32 noundef 0) #7
  %irq = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 20
  %21 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call32, ptr %irq, align 4
  %dev36 = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 45
  %22 = ptrtoint ptr %dev36 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %dev, ptr %dev36, align 4
  %call.i150 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call32, ptr noundef nonnull @exar_misc_handler, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.7, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i150)
  %tobool41.not = icmp eq i32 %call.i150, 0
  br i1 %tobool41.not, label %if.end43, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end43:                                         ; preds = %if.end31
  %23 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %virt, align 4
  %add.ptr.i = getelementptr i8, ptr %24, i32 128
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #7, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !96
  %26 = ptrtoint ptr %board21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %board21, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %29)
  %cmp.i = icmp ugt i32 %29, 8
  br i1 %cmp.i, label %if.then.i, label %if.end43.exar_misc_clear.exit_crit_edge

if.end43.exar_misc_clear.exit_crit_edge:          ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %exar_misc_clear.exit

if.then.i:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %virt, align 4
  %add.ptr6.i = getelementptr i8, ptr %31, i32 8320
  %32 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr6.i) #7, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  br label %exar_misc_clear.exit

exar_misc_clear.exit:                             ; preds = %if.then.i, %if.end43.exar_misc_clear.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond15)
  %cmp44155 = icmp ne i32 %cond15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr)
  %cmp46156 = icmp ne i32 %shr, 0
  %or.cond157 = select i1 %cmp44155, i1 %cmp46156, i1 false
  br i1 %or.cond157, label %for.body.lr.ph, label %exar_misc_clear.exit.for.end_crit_edge

exar_misc_clear.exit.for.end_crit_edge:           ; preds = %exar_misc_clear.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %exar_misc_clear.exit
  %setup = getelementptr inbounds %struct.exar8250_board, ptr %2, i32 0, i32 2
  %iobase = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 1
  %iotype = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 26
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0158 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %33 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %setup, align 4
  %call48 = call i32 %34(ptr noundef nonnull %call.i, ptr noundef %pcidev, ptr noundef nonnull %uart, i32 noundef %i.0158) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %do.body53, label %do.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %i.0158) #10
  br label %for.end

do.body53:                                        ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exar_pci_probe.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@exar_pci_probe, %if.then58)) #7
          to label %do.end67 [label %if.then58], !srcloc !98

if.then58:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %iobase, align 4
  %37 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %irq, align 4
  %39 = ptrtoint ptr %iotype to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %iotype, align 2
  %conv64 = zext i8 %40 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @exar_pci_probe.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %36, i32 noundef %38, i32 noundef %conv64) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then58, %do.body53
  %call68 = call i32 @serial8250_register_8250_port(ptr noundef nonnull %uart) #7
  %arrayidx69 = getelementptr %struct.exar8250, ptr %call.i, i32 0, i32 3, i32 %i.0158
  %41 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %call68, ptr %arrayidx69, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %cmp72 = icmp slt i32 %call68, 0
  br i1 %cmp72, label %do.end77, label %for.inc

do.end77:                                         ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %iobase, align 4
  %44 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %irq, align 4
  %46 = ptrtoint ptr %iotype to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %iotype, align 2
  %conv85 = zext i8 %47 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %43, i32 noundef %45, i32 noundef %conv85, i32 noundef %call68) #10
  br label %for.end

for.inc:                                          ; preds = %do.end67
  %inc = add nuw i32 %i.0158, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %cond15)
  %cmp44 = icmp ult i32 %inc, %cond15
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %shr)
  %cmp46 = icmp ult i32 %inc, %shr
  %or.cond = select i1 %cmp44, i1 %cmp46, i1 false
  br i1 %or.cond, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end77, %do.end, %exar_misc_clear.exit.for.end_crit_edge
  %i.0154 = phi i32 [ %i.0158, %do.end77 ], [ %i.0158, %do.end ], [ 0, %exar_misc_clear.exit.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ]
  %48 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %i.0154, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pcidev, i32 0, i32 44, i32 8
  %49 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end31.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %cond.end14.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ -12, %cond.end14.cleanup_crit_edge ], [ -12, %if.end20.cleanup_crit_edge ], [ %call.i149, %if.end26.cleanup_crit_edge ], [ %call.i150, %if.end31.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 584, ptr nonnull %uart) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exar_pci_remove(ptr noundef %pcidev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pcidev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp9.not = icmp eq i32 %3, 0
  br i1 %cmp9.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.010 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.exar8250, ptr %1, i32 0, i32 3, i32 %i.010
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  tail call void @serial8250_unregister_port(i32 noundef %5) #7
  %inc = add nuw i32 %i.010, 1
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  %cmp = icmp ult i32 %inc, %7
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %board = getelementptr inbounds %struct.exar8250, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %board, align 4
  %exit = getelementptr inbounds %struct.exar8250_board, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %exit to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %exit, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %for.end.if.end_crit_edge, label %if.then

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %11(ptr noundef %pcidev) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_xr17c154_setup(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %pcidev, ptr nocapture noundef writeonly %port, i32 noundef %idx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %idx, 9
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 22
  %0 = ptrtoint ptr %uartclk to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 14745600, ptr %uartclk, align 4
  %board1.i = getelementptr inbounds %struct.exar8250, ptr %priv, i32 0, i32 1
  %1 = ptrtoint ptr %board1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %board1.i, align 4
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %3 = ptrtoint ptr %iotype.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 2, ptr %iotype.i, align 2
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %pcidev, i32 0, i32 47
  %4 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %resource.i, align 8
  %add.i = add i32 %5, %mul
  %mapbase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 43
  %6 = ptrtoint ptr %mapbase.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add.i, ptr %mapbase.i, align 4
  %virt.i = getelementptr inbounds %struct.exar8250, ptr %priv, i32 0, i32 2
  %7 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %virt.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 %mul
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %9 = ptrtoint ptr %membase.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr.i, ptr %membase.i, align 4
  %reg_shift.i = getelementptr inbounds %struct.exar8250_board, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reg_shift.i, align 4
  %conv.i = trunc i32 %11 to i8
  %regshift.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 25
  %12 = ptrtoint ptr %regshift.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv.i, ptr %regshift.i, align 1
  %add.ptr8.i = getelementptr i8, ptr %add.ptr.i, i32 141
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr8.i) #7, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !99
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i8 %13, label %if.else.i [
    i8 -126, label %entry.if.then.i_crit_edge
    i8 -124, label %entry.if.then.i_crit_edge5
    i8 -120, label %entry.if.then.i_crit_edge6
  ]

entry.if.then.i_crit_edge6:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

entry.if.then.i_crit_edge5:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %entry.if.then.i_crit_edge, %entry.if.then.i_crit_edge5, %entry.if.then.i_crit_edge6
  %type.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %15 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 24, ptr %type.i, align 4
  %get_divisor.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 9
  %16 = ptrtoint ptr %get_divisor.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @xr17v35x_get_divisor, ptr %get_divisor.i, align 4
  %set_divisor.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 10
  %17 = ptrtoint ptr %set_divisor.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @xr17v35x_set_divisor, ptr %set_divisor.i, align 4
  %startup.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 11
  %18 = ptrtoint ptr %startup.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @xr17v35x_startup, ptr %startup.i, align 4
  br label %default_setup.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %type24.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %19 = ptrtoint ptr %type24.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 21, ptr %type24.i, align 4
  br label %default_setup.exit

default_setup.exit:                               ; preds = %if.else.i, %if.then.i
  %pm.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 16
  %20 = ptrtoint ptr %pm.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @exar_pm, ptr %pm.i, align 4
  %shutdown.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 12
  %21 = ptrtoint ptr %shutdown.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @exar_shutdown, ptr %shutdown.i, align 4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xr17v35x_get_divisor(ptr nocapture noundef readonly %p, i32 noundef %baud, ptr nocapture noundef writeonly %frac) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 22
  %0 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %uartclk, align 4
  %div4 = lshr i32 %baud, 1
  %add = add i32 %1, %div4
  %div1 = udiv i32 %add, %baud
  %and = and i32 %div1, 15
  %2 = ptrtoint ptr %frac to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and, ptr %frac, align 4
  %shr = lshr i32 %div1, 4
  ret i32 %shr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xr17v35x_set_divisor(ptr noundef %p, i32 noundef %baud, i32 noundef %quot, i32 noundef %quot_frac) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @serial8250_do_set_divisor(ptr noundef %p, i32 noundef %baud, i32 noundef %quot, i32 noundef %quot_frac) #7
  %serial_in.i = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 3
  %0 = ptrtoint ptr %serial_in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %serial_in.i, align 4
  %call.i = tail call i32 %1(ptr noundef %p, i32 noundef 2) #7
  %and = and i32 %call.i, 240
  %or = or i32 %and, %quot_frac
  %serial_out.i = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 4
  %2 = ptrtoint ptr %serial_out.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %serial_out.i, align 4
  tail call void %3(ptr noundef %p, i32 noundef 2, i32 noundef %or) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xr17v35x_startup(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %serial_out.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 4
  %0 = ptrtoint ptr %serial_out.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %serial_out.i, align 4
  tail call void %1(ptr noundef %port, i32 noundef 9, i32 noundef 16) #7
  %2 = ptrtoint ptr %serial_out.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %serial_out.i, align 4
  tail call void %3(ptr noundef %port, i32 noundef 1, i32 noundef 0) #7
  %call = tail call i32 @serial8250_do_startup(ptr noundef %port) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exar_pm(ptr noundef %port, i32 noundef %state, i32 noundef %old) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool.not = icmp eq i32 %state, 0
  %cond = select i1 %tobool.not, i32 0, i32 255
  %serial_out.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 4
  %0 = ptrtoint ptr %serial_out.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %serial_out.i, align 4
  tail call void %1(ptr noundef %port, i32 noundef 139, i32 noundef %cond) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exar_shutdown(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 30
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %serial_in.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 3
  %head = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 1
  %tail = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 2
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %do.body.do.body_crit_edge ]
  %2 = ptrtoint ptr %serial_in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %serial_in.i, align 4
  %call.i = tail call i32 %3(ptr noundef %port, i32 noundef 5) #7
  %and = and i32 %call.i, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1100, i32 noundef 2) #7
  %4 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %head, align 4
  %6 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp = icmp ne i32 %5, %7
  %brmerge = select i1 %cmp, i1 %tobool.not, i1 false
  %inc = add nuw nsw i32 %i.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %i.0)
  %cmp6 = icmp ult i32 %i.0, 1000
  %or.cond = select i1 %brmerge, i1 %cmp6, i1 false
  br i1 %or.cond, label %do.body.do.body_crit_edge, label %do.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @serial8250_do_shutdown(ptr noundef %port) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_do_set_divisor(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serial8250_do_startup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_do_shutdown(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_connect_tech_setup(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %pcidev, ptr nocapture noundef writeonly %port, i32 noundef %idx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %idx, 9
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 22
  %0 = ptrtoint ptr %uartclk to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 29491200, ptr %uartclk, align 4
  %board1.i = getelementptr inbounds %struct.exar8250, ptr %priv, i32 0, i32 1
  %1 = ptrtoint ptr %board1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %board1.i, align 4
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %3 = ptrtoint ptr %iotype.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 2, ptr %iotype.i, align 2
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %pcidev, i32 0, i32 47
  %4 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %resource.i, align 8
  %add.i = add i32 %5, %mul
  %mapbase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 43
  %6 = ptrtoint ptr %mapbase.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add.i, ptr %mapbase.i, align 4
  %virt.i = getelementptr inbounds %struct.exar8250, ptr %priv, i32 0, i32 2
  %7 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %virt.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 %mul
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %9 = ptrtoint ptr %membase.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr.i, ptr %membase.i, align 4
  %reg_shift.i = getelementptr inbounds %struct.exar8250_board, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reg_shift.i, align 4
  %conv.i = trunc i32 %11 to i8
  %regshift.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 25
  %12 = ptrtoint ptr %regshift.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv.i, ptr %regshift.i, align 1
  %add.ptr8.i = getelementptr i8, ptr %add.ptr.i, i32 141
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr8.i) #7, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !99
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.17)
  switch i8 %13, label %if.else.i [
    i8 -126, label %entry.if.then.i_crit_edge
    i8 -124, label %entry.if.then.i_crit_edge5
    i8 -120, label %entry.if.then.i_crit_edge6
  ]

entry.if.then.i_crit_edge6:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

entry.if.then.i_crit_edge5:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %entry.if.then.i_crit_edge, %entry.if.then.i_crit_edge5, %entry.if.then.i_crit_edge6
  %type.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %15 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 24, ptr %type.i, align 4
  %get_divisor.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 9
  %16 = ptrtoint ptr %get_divisor.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @xr17v35x_get_divisor, ptr %get_divisor.i, align 4
  %set_divisor.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 10
  %17 = ptrtoint ptr %set_divisor.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @xr17v35x_set_divisor, ptr %set_divisor.i, align 4
  %startup.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 11
  %18 = ptrtoint ptr %startup.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @xr17v35x_startup, ptr %startup.i, align 4
  br label %default_setup.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %type24.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %19 = ptrtoint ptr %type24.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 21, ptr %type24.i, align 4
  br label %default_setup.exit

default_setup.exit:                               ; preds = %if.else.i, %if.then.i
  %pm.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 16
  %20 = ptrtoint ptr %pm.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @exar_pm, ptr %pm.i, align 4
  %shutdown.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 12
  %21 = ptrtoint ptr %shutdown.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @exar_shutdown, ptr %shutdown.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_xr17v35x_setup(ptr nocapture noundef readonly %priv, ptr noundef %pcidev, ptr nocapture noundef %port, i32 noundef %idx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %idx, 10
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 22
  %0 = ptrtoint ptr %uartclk to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 125000000, ptr %uartclk, align 4
  %rs485_config4 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 18
  %1 = ptrtoint ptr %rs485_config4 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @generic_rs485_config, ptr %rs485_config4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %idx)
  %cmp = icmp sgt i32 %idx, 7
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %uartclk to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 62500000, ptr %uartclk, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %board1.i = getelementptr inbounds %struct.exar8250, ptr %priv, i32 0, i32 1
  %3 = ptrtoint ptr %board1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %board1.i, align 4
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %5 = ptrtoint ptr %iotype.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 2, ptr %iotype.i, align 2
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %pcidev, i32 0, i32 47
  %6 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %resource.i, align 8
  %add.i = add i32 %7, %mul
  %mapbase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 43
  %8 = ptrtoint ptr %mapbase.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add.i, ptr %mapbase.i, align 4
  %virt.i = getelementptr inbounds %struct.exar8250, ptr %priv, i32 0, i32 2
  %9 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %virt.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 %mul
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %11 = ptrtoint ptr %membase.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %add.ptr.i, ptr %membase.i, align 4
  %reg_shift.i = getelementptr inbounds %struct.exar8250_board, ptr %4, i32 0, i32 1
  %12 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reg_shift.i, align 4
  %conv.i = trunc i32 %13 to i8
  %regshift.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 25
  %14 = ptrtoint ptr %regshift.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv.i, ptr %regshift.i, align 1
  %add.ptr8.i = getelementptr i8, ptr %add.ptr.i, i32 141
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr8.i) #7, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !99
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.18)
  switch i8 %15, label %if.else.i [
    i8 -126, label %if.end.if.then.i_crit_edge
    i8 -124, label %if.end.if.then.i_crit_edge55
    i8 -120, label %if.end.if.then.i_crit_edge56
  ]

if.end.if.then.i_crit_edge56:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.end.if.then.i_crit_edge55:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %if.end.if.then.i_crit_edge, %if.end.if.then.i_crit_edge55, %if.end.if.then.i_crit_edge56
  %type.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %17 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 24, ptr %type.i, align 4
  %get_divisor.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 9
  %18 = ptrtoint ptr %get_divisor.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @xr17v35x_get_divisor, ptr %get_divisor.i, align 4
  %set_divisor.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 10
  %19 = ptrtoint ptr %set_divisor.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @xr17v35x_set_divisor, ptr %set_divisor.i, align 4
  %startup.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 11
  %20 = ptrtoint ptr %startup.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @xr17v35x_startup, ptr %startup.i, align 4
  br label %default_setup.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %type24.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %21 = ptrtoint ptr %type24.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 21, ptr %type24.i, align 4
  br label %default_setup.exit

default_setup.exit:                               ; preds = %if.else.i, %if.then.i
  %pm.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 16
  %22 = ptrtoint ptr %pm.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @exar_pm, ptr %pm.i, align 4
  %shutdown.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 12
  %23 = ptrtoint ptr %shutdown.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @exar_shutdown, ptr %shutdown.i, align 4
  %24 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %membase.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !100
  tail call void @arm_heavy_mb() #7
  %add.ptr = getelementptr i8, ptr %25, i32 136
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 0) #7, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void @arm_heavy_mb() #7
  %add.ptr14 = getelementptr i8, ptr %25, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr14, i8 -64) #7, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !103
  tail call void @arm_heavy_mb() #7
  %add.ptr18 = getelementptr i8, ptr %25, i32 10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr18, i8 -128) #7, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !104
  tail call void @arm_heavy_mb() #7
  %add.ptr22 = getelementptr i8, ptr %25, i32 11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr22, i8 -128) #7, !srcloc !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx)
  %cmp23 = icmp eq i32 %idx, 0
  br i1 %cmp23, label %if.then24, label %default_setup.exit.cleanup_crit_edge

default_setup.exit.cleanup_crit_edge:             ; preds = %default_setup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then24:                                        ; preds = %default_setup.exit
  %vendor.i = getelementptr inbounds %struct.pci_dev, ptr %pcidev, i32 0, i32 7
  %26 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %vendor.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 5032, i16 %27)
  %cmp.i = icmp eq i16 %27, 5032
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then24.if.else.i49_crit_edge

if.then24.if.else.i49_crit_edge:                  ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i49

land.lhs.true.i:                                  ; preds = %if.then24
  %subsystem_vendor.i = getelementptr inbounds %struct.pci_dev, ptr %pcidev, i32 0, i32 9
  %28 = ptrtoint ptr %subsystem_vendor.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %subsystem_vendor.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4958, i16 %29)
  %cmp3.not.i = icmp eq i16 %29, 4958
  br i1 %cmp3.not.i, label %land.lhs.true.i.if.else.i49_crit_edge, label %land.lhs.true.i.setup_gpio.exit_crit_edge

land.lhs.true.i.setup_gpio.exit_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %setup_gpio.exit

land.lhs.true.i.if.else.i49_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i49

if.else.i49:                                      ; preds = %land.lhs.true.i.if.else.i49_crit_edge, %if.then24.if.else.i49_crit_edge
  br label %setup_gpio.exit

setup_gpio.exit:                                  ; preds = %if.else.i49, %land.lhs.true.i.setup_gpio.exit_crit_edge
  %dir.0.i = phi i8 [ 0, %if.else.i49 ], [ -1, %land.lhs.true.i.setup_gpio.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  tail call void @arm_heavy_mb() #7
  %add.ptr.i50 = getelementptr i8, ptr %25, i32 143
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i50, i8 0) #7, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !106
  tail call void @arm_heavy_mb() #7
  %add.ptr8.i51 = getelementptr i8, ptr %25, i32 144
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr8.i51, i8 0) #7, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !107
  tail call void @arm_heavy_mb() #7
  %add.ptr12.i = getelementptr i8, ptr %25, i32 145
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr12.i, i8 0) #7, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !108
  tail call void @arm_heavy_mb() #7
  %add.ptr16.i = getelementptr i8, ptr %25, i32 146
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr16.i, i8 0) #7, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !109
  tail call void @arm_heavy_mb() #7
  %add.ptr20.i = getelementptr i8, ptr %25, i32 147
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr20.i, i8 %dir.0.i) #7, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !110
  tail call void @arm_heavy_mb() #7
  %add.ptr24.i = getelementptr i8, ptr %25, i32 148
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr24.i, i8 0) #7, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !111
  tail call void @arm_heavy_mb() #7
  %add.ptr28.i = getelementptr i8, ptr %25, i32 149
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr28.i, i8 0) #7, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !112
  tail call void @arm_heavy_mb() #7
  %add.ptr32.i = getelementptr i8, ptr %25, i32 150
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr32.i, i8 0) #7, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  tail call void @arm_heavy_mb() #7
  %add.ptr36.i = getelementptr i8, ptr %25, i32 151
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr36.i, i8 0) #7, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %add.ptr40.i = getelementptr i8, ptr %25, i32 152
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr40.i, i8 0) #7, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !115
  tail call void @arm_heavy_mb() #7
  %add.ptr44.i = getelementptr i8, ptr %25, i32 153
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr44.i, i8 %dir.0.i) #7, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  tail call void @arm_heavy_mb() #7
  %add.ptr48.i = getelementptr i8, ptr %25, i32 154
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr48.i, i8 0) #7, !srcloc !101
  %30 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %vendor.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 5032, i16 %31)
  %cmp.i53 = icmp eq i16 %31, 5032
  br i1 %cmp.i53, label %if.then.i54, label %setup_gpio.exit.cleanup_crit_edge

setup_gpio.exit.cleanup_crit_edge:                ; preds = %setup_gpio.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i54:                                      ; preds = %setup_gpio.exit
  %call.i.i = tail call ptr @platform_device_alloc(ptr noundef nonnull @.str.2, i32 noundef -2) #7
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i54.__xr17v35x_register_gpio.exit.i_crit_edge, label %if.end.i.i

if.then.i54.__xr17v35x_register_gpio.exit.i_crit_edge: ; preds = %if.then.i54
  call void @__sanitizer_cov_trace_pc() #9
  br label %__xr17v35x_register_gpio.exit.i

if.end.i.i:                                       ; preds = %if.then.i54
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %pcidev, i32 0, i32 44
  %dev1.i.i = getelementptr inbounds %struct.platform_device, ptr %call.i.i, i32 0, i32 3
  %parent.i.i = getelementptr inbounds %struct.platform_device, ptr %call.i.i, i32 0, i32 3, i32 1
  %32 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %dev.i.i, ptr %parent.i.i, align 8
  %call3.i.i = tail call i32 @device_add_software_node(ptr noundef %dev1.i.i, ptr noundef nonnull @exar_gpio_node) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp.i.i = icmp slt i32 %call3.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i.if.then6.i.i_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.if.then6.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6.i.i

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call4.i.i = tail call i32 @platform_device_add(ptr noundef nonnull %call.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %cmp5.i.i = icmp slt i32 %call4.i.i, 0
  br i1 %cmp5.i.i, label %lor.lhs.false.i.i.if.then6.i.i_crit_edge, label %lor.lhs.false.i.i.__xr17v35x_register_gpio.exit.i_crit_edge

lor.lhs.false.i.i.__xr17v35x_register_gpio.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__xr17v35x_register_gpio.exit.i

lor.lhs.false.i.i.if.then6.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6.i.i

if.then6.i.i:                                     ; preds = %lor.lhs.false.i.i.if.then6.i.i_crit_edge, %if.end.i.i.if.then6.i.i_crit_edge
  tail call void @platform_device_put(ptr noundef nonnull %call.i.i) #7
  br label %__xr17v35x_register_gpio.exit.i

__xr17v35x_register_gpio.exit.i:                  ; preds = %if.then6.i.i, %lor.lhs.false.i.i.__xr17v35x_register_gpio.exit.i_crit_edge, %if.then.i54.__xr17v35x_register_gpio.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ null, %if.then6.i.i ], [ null, %if.then.i54.__xr17v35x_register_gpio.exit.i_crit_edge ], [ %call.i.i, %lor.lhs.false.i.i.__xr17v35x_register_gpio.exit.i_crit_edge ]
  %private_data.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 59
  %33 = ptrtoint ptr %private_data.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %retval.0.i.i, ptr %private_data.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %__xr17v35x_register_gpio.exit.i, %setup_gpio.exit.cleanup_crit_edge, %default_setup.exit.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pci_xr17v35x_exit(ptr nocapture noundef readonly %pcidev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pcidev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %line = getelementptr inbounds %struct.exar8250, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %line, align 4
  %call2 = tail call ptr @serial8250_get_port(i32 noundef %3) #7
  %private_data.i = getelementptr inbounds %struct.uart_port, ptr %call2, i32 0, i32 59
  %4 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.xr17v35x_unregister_gpio.exit_crit_edge, label %if.end.i

entry.xr17v35x_unregister_gpio.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %xr17v35x_unregister_gpio.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  tail call void @device_remove_software_node(ptr noundef %dev.i.i) #7
  tail call void @platform_device_unregister(ptr noundef nonnull %5) #7
  %6 = ptrtoint ptr %private_data.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %private_data.i, align 4
  br label %xr17v35x_unregister_gpio.exit

xr17v35x_unregister_gpio.exit:                    ; preds = %if.end.i, %entry.xr17v35x_unregister_gpio.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @generic_rs485_config(ptr nocapture noundef %port, ptr nocapture noundef readonly %rs485) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rs485 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rs485, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %2 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 8
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #7, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  %5 = and i8 %4, -33
  %6 = trunc i32 %and to i8
  %7 = shl nuw nsw i8 %6, 5
  %value.0 = or i8 %5, %7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %value.0) #7, !srcloc !101
  br i1 %tobool.not, label %entry.if.end15_crit_edge, label %do.body11

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

do.body11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  %add.ptr14 = getelementptr i8, ptr %3, i32 6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr14, i8 64) #7, !srcloc !101
  br label %if.end15

if.end15:                                         ; preds = %do.body11, %entry.if.end15_crit_edge
  %rs48516 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 56
  %8 = call ptr @memcpy(ptr %rs48516, ptr %rs485, i32 32)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add_software_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_software_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @serial8250_get_port(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_fastcom335_setup(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %pcidev, ptr nocapture noundef %port, i32 noundef %idx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %idx, 9
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 22
  %0 = ptrtoint ptr %uartclk to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 29491200, ptr %uartclk, align 4
  %board1.i = getelementptr inbounds %struct.exar8250, ptr %priv, i32 0, i32 1
  %1 = ptrtoint ptr %board1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %board1.i, align 4
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %3 = ptrtoint ptr %iotype.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 2, ptr %iotype.i, align 2
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %pcidev, i32 0, i32 47
  %4 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %resource.i, align 8
  %add.i = add i32 %5, %mul
  %mapbase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 43
  %6 = ptrtoint ptr %mapbase.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add.i, ptr %mapbase.i, align 4
  %virt.i = getelementptr inbounds %struct.exar8250, ptr %priv, i32 0, i32 2
  %7 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %virt.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 %mul
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %9 = ptrtoint ptr %membase.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr.i, ptr %membase.i, align 4
  %reg_shift.i = getelementptr inbounds %struct.exar8250_board, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reg_shift.i, align 4
  %conv.i = trunc i32 %11 to i8
  %regshift.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 25
  %12 = ptrtoint ptr %regshift.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv.i, ptr %regshift.i, align 1
  %add.ptr8.i = getelementptr i8, ptr %add.ptr.i, i32 141
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr8.i) #7, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !99
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.19)
  switch i8 %13, label %if.else.i [
    i8 -126, label %entry.if.then.i_crit_edge
    i8 -124, label %entry.if.then.i_crit_edge76
    i8 -120, label %entry.if.then.i_crit_edge77
  ]

entry.if.then.i_crit_edge77:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

entry.if.then.i_crit_edge76:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %entry.if.then.i_crit_edge, %entry.if.then.i_crit_edge76, %entry.if.then.i_crit_edge77
  %type.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %15 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 24, ptr %type.i, align 4
  %get_divisor.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 9
  %16 = ptrtoint ptr %get_divisor.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @xr17v35x_get_divisor, ptr %get_divisor.i, align 4
  %set_divisor.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 10
  %17 = ptrtoint ptr %set_divisor.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @xr17v35x_set_divisor, ptr %set_divisor.i, align 4
  %startup.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 11
  %18 = ptrtoint ptr %startup.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @xr17v35x_startup, ptr %startup.i, align 4
  br label %default_setup.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %type24.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %19 = ptrtoint ptr %type24.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 21, ptr %type24.i, align 4
  br label %default_setup.exit

default_setup.exit:                               ; preds = %if.else.i, %if.then.i
  %pm.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 16
  %20 = ptrtoint ptr %pm.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @exar_pm, ptr %pm.i, align 4
  %shutdown.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 12
  %21 = ptrtoint ptr %shutdown.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @exar_shutdown, ptr %shutdown.i, align 4
  %22 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %membase.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !120
  tail call void @arm_heavy_mb() #7
  %add.ptr = getelementptr i8, ptr %23, i32 136
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 0) #7, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  tail call void @arm_heavy_mb() #7
  %add.ptr7 = getelementptr i8, ptr %23, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr7, i8 -64) #7, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  tail call void @arm_heavy_mb() #7
  %add.ptr11 = getelementptr i8, ptr %23, i32 10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr11, i8 32) #7, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %add.ptr15 = getelementptr i8, ptr %23, i32 11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr15, i8 32) #7, !srcloc !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx)
  %cmp = icmp eq i32 %idx, 0
  br i1 %cmp, label %if.then16, label %default_setup.exit.cleanup_crit_edge

default_setup.exit.cleanup_crit_edge:             ; preds = %default_setup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then16:                                        ; preds = %default_setup.exit
  %device = getelementptr inbounds %struct.pci_dev, ptr %pcidev, i32 0, i32 8
  %24 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %device, align 2
  %26 = zext i16 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.20)
  switch i16 %25, label %if.then16.do.body42_crit_edge [
    i16 4, label %if.then16.do.body17_crit_edge
    i16 2, label %if.then16.do.body17_crit_edge78
    i16 10, label %if.then16.do.body30_crit_edge
    i16 11, label %if.then16.do.body30_crit_edge79
  ]

if.then16.do.body30_crit_edge79:                  ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body30

if.then16.do.body30_crit_edge:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body30

if.then16.do.body17_crit_edge78:                  ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

if.then16.do.body17_crit_edge:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

if.then16.do.body42_crit_edge:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body42

do.body17:                                        ; preds = %if.then16.do.body17_crit_edge, %if.then16.do.body17_crit_edge78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  tail call void @arm_heavy_mb() #7
  %add.ptr20 = getelementptr i8, ptr %23, i32 144
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr20, i8 120) #7, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !125
  tail call void @arm_heavy_mb() #7
  %add.ptr24 = getelementptr i8, ptr %23, i32 146
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr24, i8 0) #7, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !126
  tail call void @arm_heavy_mb() #7
  %add.ptr28 = getelementptr i8, ptr %23, i32 147
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr28, i8 0) #7, !srcloc !101
  br label %do.body42

do.body30:                                        ; preds = %if.then16.do.body30_crit_edge, %if.then16.do.body30_crit_edge79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !127
  tail call void @arm_heavy_mb() #7
  %add.ptr33 = getelementptr i8, ptr %23, i32 144
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr33, i8 0) #7, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  tail call void @arm_heavy_mb() #7
  %add.ptr37 = getelementptr i8, ptr %23, i32 146
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr37, i8 -64) #7, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !129
  tail call void @arm_heavy_mb() #7
  %add.ptr41 = getelementptr i8, ptr %23, i32 147
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr41, i8 -64) #7, !srcloc !101
  br label %do.body42

do.body42:                                        ; preds = %do.body30, %do.body17, %if.then16.do.body42_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !130
  tail call void @arm_heavy_mb() #7
  %add.ptr45 = getelementptr i8, ptr %23, i32 143
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr45, i8 0) #7, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !131
  tail call void @arm_heavy_mb() #7
  %add.ptr49 = getelementptr i8, ptr %23, i32 145
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr49, i8 0) #7, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !132
  tail call void @arm_heavy_mb() #7
  %add.ptr53 = getelementptr i8, ptr %23, i32 148
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr53, i8 0) #7, !srcloc !101
  br label %cleanup

cleanup:                                          ; preds = %do.body42, %default_setup.exit.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcim_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_irq_vector(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exar_misc_handler(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %virt.i = getelementptr inbounds %struct.exar8250, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %virt.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 128
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #7, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !96
  %board.i = getelementptr inbounds %struct.exar8250, ptr %data, i32 0, i32 1
  %3 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %board.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %6)
  %cmp.i = icmp ugt i32 %6, 8
  br i1 %cmp.i, label %if.then.i, label %entry.exar_misc_clear.exit_crit_edge

entry.exar_misc_clear.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %exar_misc_clear.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %virt.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %8, i32 8320
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr6.i) #7, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  br label %exar_misc_clear.exit

exar_misc_clear.exit:                             ; preds = %if.then.i, %entry.exar_misc_clear.exit_crit_edge
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serial8250_register_8250_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_alloc_irq_vectors_affinity(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_unregister_port(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exar_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp17.not = icmp eq i32 %3, 0
  br i1 %cmp17.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.018 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.exar8250, ptr %1, i32 0, i32 3, i32 %i.018
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp1 = icmp sgt i32 %5, -1
  br i1 %cmp1, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @serial8250_suspend_port(i32 noundef %5) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.018, 1
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  %cmp = icmp ult i32 %inc, %7
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %board = getelementptr inbounds %struct.exar8250, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %board, align 4
  %exit = getelementptr inbounds %struct.exar8250_board, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %exit to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %exit, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %for.end.if.end7_crit_edge, label %if.then4

for.end.if.end7_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then4:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %11(ptr noundef %add.ptr) #7
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %for.end.if.end7_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exar_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %virt.i = getelementptr inbounds %struct.exar8250, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %virt.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 128
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #7, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !96
  %board.i = getelementptr inbounds %struct.exar8250, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %board.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %8)
  %cmp.i = icmp ugt i32 %8, 8
  br i1 %cmp.i, label %if.then.i, label %entry.exar_misc_clear.exit_crit_edge

entry.exar_misc_clear.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %exar_misc_clear.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %virt.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %10, i32 8320
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr6.i) #7, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  br label %exar_misc_clear.exit

exar_misc_clear.exit:                             ; preds = %if.then.i, %entry.exar_misc_clear.exit_crit_edge
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp10.not = icmp eq i32 %13, 0
  br i1 %cmp10.not, label %exar_misc_clear.exit.for.end_crit_edge, label %exar_misc_clear.exit.for.body_crit_edge

exar_misc_clear.exit.for.body_crit_edge:          ; preds = %exar_misc_clear.exit
  br label %for.body

exar_misc_clear.exit.for.end_crit_edge:           ; preds = %exar_misc_clear.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %exar_misc_clear.exit.for.body_crit_edge
  %i.011 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %exar_misc_clear.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.exar8250, ptr %1, i32 0, i32 3, i32 %i.011
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp1 = icmp sgt i32 %15, -1
  br i1 %cmp1, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @serial8250_resume_port(i32 noundef %15) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.011, 1
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %1, align 4
  %cmp = icmp ult i32 %inc, %17
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %exar_misc_clear.exit.for.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_suspend_port(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_resume_port(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !72, !73, !74, !75, !76, !77, !79, !80, !82, !83, !84}
!llvm.module.flags = !{!86, !87, !88, !89, !90, !91, !92, !93}
!llvm.ident = !{!94}

!0 = !{ptr @__initcall__kmod_8250_exar__239_880_exar_pci_driver_init6, !1, !"__initcall__kmod_8250_exar__239_880_exar_pci_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/tty/serial/8250/8250_exar.c", i32 880, i32 1}
!2 = !{ptr @__exitcall_exar_pci_driver_exit, !1, !"__exitcall_exar_pci_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file240, !4, !"__UNIQUE_ID_file240", i1 false, i1 false}
!4 = !{!"../drivers/tty/serial/8250/8250_exar.c", i32 882, i32 1}
!5 = !{ptr @__UNIQUE_ID_license241, !4, !"__UNIQUE_ID_license241", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description242, !7, !"__UNIQUE_ID_description242", i1 false, i1 false}
!7 = !{!"../drivers/tty/serial/8250/8250_exar.c", i32 883, i32 1}
!8 = !{ptr @__UNIQUE_ID_author243, !9, !"__UNIQUE_ID_author243", i1 false, i1 false}
!9 = !{!"../drivers/tty/serial/8250/8250_exar.c", i32 884, i32 1}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/tty/serial/8250/8250_exar.c", i32 872, i32 11}
!13 = !{ptr @exar_pci_driver, !14, !"exar_pci_driver", i1 false, i1 false}
!14 = !{!"../drivers/tty/serial/8250/8250_exar.c", i32 871, i32 26}
!15 = !{ptr @exar_pci_tbl, !16, !"exar_pci_tbl", i1 false, i1 false}
!16 = !{!"../drivers/tty/serial/8250/8250_exar.c", i32 824, i32 35}
!17 = !{ptr @acces_com_2x, !18, !"acces_com_2x", i1 false, i1 false}
!18 = !{!"../drivers/tty/serial/8250/8250_exar.c", i32 725, i32 36}
!19 = !{ptr @acces_com_4x, !20, !"acces_com_4x", i1 false, i1 false}
!20 = !{!"../drivers/tty/serial/8250/8250_exar.c", i32 730, i32 36}
!21 = !{ptr @acces_com_8x, !22, !"acces_com_8x", i1 false, i1 false}
!22 = !{!"../drivers/tty/serial/8250/8250_exar.c", i32 735, i32 36}
!23 = !{ptr @pbn_connect, !24, !"pbn_connect", i1 false, i1 false}
!24 = !{!"../drivers/tty/serial/8250/8250_exar.c", i32 756, i32 36}
!25 = !{ptr @pbn_exar_ibm_saturn, !26, !"pbn_exar_ibm_saturn", i1 false, i1 false}
!26 = !{!"../drivers/tty/serial/8250/8250_exar.c", i32 760, i32 36}
!27 = !{ptr @pbn_exar_XR17C15x, !28, !"pbn_exar_XR17C15x", i1 false, i1 false}
!28 = !{!"../drivers/tty/serial/8250/8250_exar.c", i32 765, i32 36}
!29 = !{ptr @pbn_exar_XR17V35x, !30, !"pbn_exar_XR17V35x", i1 false, i1 false}
!30 = !{!"../drivers/tty/serial/8250/8250_exar.c", i32 769, i32 36}
!31 = distinct !{null, !32, !"exar_platforms", i1 false, i1 false}
!32 = !{!"../drivers/tty/serial/8250/8250_exar.c", i32 510, i32 35}
!33 = distinct !{null, !34, !"iot2040_platform", i1 false, i1 false}
!34 = !{!"../drivers/tty/serial/8250/8250_exar.c", i32 499, i32 39}
!35 = !{ptr @.str.2, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/tty/serial/8250/8250_exar.c", i32 361, i32 31}
!37 = distinct !{null, !38, !"iot2040_gpio_node", i1 false, i1 false}
!38 = !{!"../drivers/tty/serial/8250/8250_exar.c", i32 479, i32 35}
!39 = !{ptr @.str.3, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/tty/serial/8250/8250_exar.c", i32 474, i32 2}
!41 = !{ptr @.str.4, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/tty/serial/8250/8250_exar.c", i32 475, i32 2}
!43 = distinct !{null, !44, !"iot2040_gpio_properties", i1 false, i1 false}
!44 = !{!"../drivers/tty/serial/8250/8250_exar.c", i32 473, i32 36}
!45 = distinct !{null, !46, !"exar8250_default_platform", i1 false, i1 false}
!46 = !{!"../drivers/tty/serial/8250/8250_exar.c", i32 434, i32 39}
!47 = !{ptr @exar_gpio_node, !48, !"exar_gpio_node", i1 false, i1 false}
!48 = !{!"../drivers/tty/serial/8250/8250_exar.c", i32 389, i32 35}
!49 = !{ptr @exar_gpio_properties, !50, !"exar_gpio_properties", i1 false, i1 false}
!50 = !{!"../drivers/tty/serial/8250/8250_exar.c", i32 383, i32 36}
!51 = !{ptr @pbn_exar_XR17V4358, !52, !"pbn_exar_XR17V4358", i1 false, i1 false}
!52 = !{!"../drivers/tty/serial/8250/8250_exar.c", i32 792, i32 36}
!53 = !{ptr @pbn_exar_XR17V8358, !54, !"pbn_exar_XR17V8358", i1 false, i1 false}
!54 = !{!"../drivers/tty/serial/8250/8250_exar.c", i32 798, i32 36}
!55 = !{ptr @pbn_fastcom35x_2, !56, !"pbn_fastcom35x_2", i1 false, i1 false}
!56 = !{!"../drivers/tty/serial/8250/8250_exar.c", i32 774, i32 36}
!57 = !{ptr @pbn_fastcom35x_4, !58, !"pbn_fastcom35x_4", i1 false, i1 false}
!58 = !{!"../drivers/tty/serial/8250/8250_exar.c", i32 780, i32 36}
!59 = !{ptr @pbn_fastcom35x_8, !60, !"pbn_fastcom35x_8", i1 false, i1 false}
!60 = !{!"../drivers/tty/serial/8250/8250_exar.c", i32 786, i32 36}
!61 = !{ptr @pbn_fastcom335_2, !62, !"pbn_fastcom335_2", i1 false, i1 false}
!62 = !{!"../drivers/tty/serial/8250/8250_exar.c", i32 741, i32 36}
!63 = !{ptr @pbn_fastcom335_4, !64, !"pbn_fastcom335_4", i1 false, i1 false}
!64 = !{!"../drivers/tty/serial/8250/8250_exar.c", i32 746, i32 36}
!65 = !{ptr @pbn_fastcom335_8, !66, !"pbn_fastcom335_8", i1 false, i1 false}
!66 = !{!"../drivers/tty/serial/8250/8250_exar.c", i32 751, i32 36}
!67 = !{ptr @.str.7, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/tty/serial/8250/8250_exar.c", i32 649, i32 18}
!69 = !{ptr @.str.8, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/tty/serial/8250/8250_exar.c", i32 659, i32 4}
!71 = !{ptr @.str.9, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.10, !70, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.11, !70, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.12, !70, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @exar_pci_probe._entry, !70, !"_entry", i1 false, i1 false}
!76 = !{ptr @exar_pci_probe._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.13, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/tty/serial/8250/8250_exar.c", i32 663, i32 3}
!79 = !{ptr @exar_pci_probe.__UNIQUE_ID_ddebug238, !78, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!80 = !{ptr @.str.15, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/tty/serial/8250/8250_exar.c", i32 668, i32 4}
!82 = !{ptr @exar_pci_probe._entry.14, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @exar_pci_probe._entry_ptr.16, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @exar_pci_pm, !85, !"exar_pci_pm", i1 false, i1 false}
!85 = !{!"../drivers/tty/serial/8250/8250_exar.c", i32 723, i32 8}
!86 = !{i32 1, !"wchar_size", i32 2}
!87 = !{i32 1, !"min_enum_size", i32 4}
!88 = !{i32 8, !"branch-target-enforcement", i32 0}
!89 = !{i32 8, !"sign-return-address", i32 0}
!90 = !{i32 8, !"sign-return-address-all", i32 0}
!91 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!92 = !{i32 7, !"uwtable", i32 1}
!93 = !{i32 7, !"frame-pointer", i32 2}
!94 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!95 = !{i64 5810762}
!96 = !{i64 2155466140}
!97 = !{i64 2155466395}
!98 = !{i64 2148970179, i64 2148970184, i64 2148970197, i64 2148970241, i64 2148970275, i64 2148970296}
!99 = !{i64 2155454104}
!100 = !{i64 2155464920}
!101 = !{i64 5810367}
!102 = !{i64 2155465181}
!103 = !{i64 2155465436}
!104 = !{i64 2155465690}
!105 = !{i64 2155457688}
!106 = !{i64 2155457944}
!107 = !{i64 2155458200}
!108 = !{i64 2155458456}
!109 = !{i64 2155458711}
!110 = !{i64 2155458966}
!111 = !{i64 2155459222}
!112 = !{i64 2155459478}
!113 = !{i64 2155459734}
!114 = !{i64 2155459990}
!115 = !{i64 2155460245}
!116 = !{i64 2155460500}
!117 = !{i64 2155461674}
!118 = !{i64 2155461896}
!119 = !{i64 2155462168}
!120 = !{i64 2155454321}
!121 = !{i64 2155454582}
!122 = !{i64 2155454836}
!123 = !{i64 2155455088}
!124 = !{i64 2155455356}
!125 = !{i64 2155455612}
!126 = !{i64 2155455868}
!127 = !{i64 2155456138}
!128 = !{i64 2155456394}
!129 = !{i64 2155456650}
!130 = !{i64 2155456906}
!131 = !{i64 2155457162}
!132 = !{i64 2155457418}
