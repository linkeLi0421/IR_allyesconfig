; ModuleID = '/llk/IR_all_yes/drivers/tty/serial/jsm/jsm_driver.c_pt.bc'
source_filename = "../drivers/tty/serial/jsm/jsm_driver.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.uart_driver = type { ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr }
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
%struct.pci_error_handlers = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.board_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.74, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.74 = type { ptr }
%struct.jsm_board = type { i32, i32, i8, ptr, i32, %struct.spinlock, i32, i32, i64, i64, ptr, i64, i64, i32, [8 x ptr], i32, ptr, %struct.list_head }
%struct.jsm_channel = type { %struct.uart_port, ptr, %struct.spinlock, %struct.wait_queue_head, i32, i32, i32, i64, i32, i32, i32, i32, i8, i8, i8, i8, ptr, ptr, i8, ptr, i16, i16, ptr, i16, i16, i64, i64, i8, i8, i8, i32, i64, i64, i64, i64, i64, i64 }
%struct.uart_port = type { %struct.spinlock, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, ptr, %struct.uart_icount, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.serial_rs485, ptr, %struct.serial_iso7816, ptr }
%struct.uart_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.serial_rs485 = type { i32, i32, i32, [5 x i32] }
%struct.serial_iso7816 = type { i32, i32, i32, i32, i32, [5 x i32] }

@__UNIQUE_ID_author236 = internal constant [52 x i8] c"jsm.author=Digi International, https://www.digi.com\00", section ".modinfo", align 1
@__UNIQUE_ID_description237 = internal constant [89 x i8] c"jsm.description=Driver for the Digi International Neo and Classic PCI based product line\00", section ".modinfo", align 1
@__UNIQUE_ID_file238 = internal constant [36 x i8] c"jsm.file=drivers/tty/serial/jsm/jsm\00", section ".modinfo", align 1
@__UNIQUE_ID_license239 = internal constant [16 x i8] c"jsm.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"jsm\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ttyn\00", [27 x i8] zeroinitializer }, align 32
@jsm_uart_driver = dso_local global { %struct.uart_driver, [60 x i8] } { %struct.uart_driver { ptr null, ptr @.str, ptr @.str.1, i32 0, i32 0, i32 32, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__param_str_jsm_debug = internal constant [14 x i8] c"jsm.jsm_debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@jsm_debug = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_jsm_debug = internal constant %struct.kernel_param { ptr @__param_str_jsm_debug, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.68 { ptr @jsm_debug } }, section "__param", align 4
@__UNIQUE_ID_jsm_debugtype240 = internal constant [27 x i8] c"jsm.parmtype=jsm_debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_jsm_debug241 = internal constant [42 x i8] c"jsm.parm=jsm_debug:Driver debugging level\00", section ".modinfo", align 1
@jsm_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @jsm_pci_tbl, ptr @jsm_probe_one, ptr @jsm_remove_one, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @jsm_err_handler, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_jsm__244_381_jsm_init_module6 = internal global ptr @jsm_init_module, section ".initcall6.init", align 4
@__exitcall_jsm_exit_module = internal global ptr @jsm_exit_module, section ".exitcall.exit", align 4
@jsm_pci_tbl = internal constant { [19 x %struct.pci_device_id], [128 x i8] } { [19 x %struct.pci_device_id] [%struct.pci_device_id { i32 4431, i32 200, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4431, i32 201, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4431, i32 202, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4431, i32 203, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 4431, i32 244, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 4431, i32 177, i32 -1, i32 -1, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 4431, i32 176, i32 -1, i32 -1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id { i32 4431, i32 204, i32 -1, i32 -1, i32 0, i32 0, i32 7, i32 0 }, %struct.pci_device_id { i32 4431, i32 205, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 4431, i32 206, i32 -1, i32 -1, i32 0, i32 0, i32 9, i32 0 }, %struct.pci_device_id { i32 4431, i32 240, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4431, i32 241, i32 -1, i32 -1, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 4431, i32 242, i32 -1, i32 -1, i32 0, i32 0, i32 12, i32 0 }, %struct.pci_device_id { i32 4431, i32 243, i32 -1, i32 -1, i32 0, i32 0, i32 13, i32 0 }, %struct.pci_device_id { i32 4431, i32 40, i32 -1, i32 -1, i32 0, i32 0, i32 14, i32 0 }, %struct.pci_device_id { i32 4431, i32 208, i32 -1, i32 -1, i32 0, i32 0, i32 15, i32 0 }, %struct.pci_device_id { i32 4431, i32 41, i32 -1, i32 -1, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 4431, i32 209, i32 -1, i32 -1, i32 0, i32 0, i32 17, i32 0 }, %struct.pci_device_id zeroinitializer], [128 x i8] zeroinitializer }, align 32
@jsm_err_handler = internal constant { %struct.pci_error_handlers, [40 x i8] } { %struct.pci_error_handlers { ptr @jsm_io_error_detected, ptr null, ptr @jsm_io_slot_reset, ptr null, ptr null, ptr @jsm_io_resume }, [40 x i8] zeroinitializer }, align 32
@jsm_probe_one.adapter_count = internal global { i32, [28 x i8] } zeroinitializer, align 32
@jsm_probe_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 59, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Device enable FAILED\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"jsm_probe_one\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/tty/serial/jsm/jsm_driver.c\00", [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@jsm_probe_one._entry_ptr = internal global ptr @jsm_probe_one._entry, section ".printk_index", align 4
@jsm_probe_one._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 65, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pci_request_region FAILED\0A\00", [37 x i8] zeroinitializer }, align 32
@jsm_probe_one._entry_ptr.9 = internal global ptr @jsm_probe_one._entry.7, section ".printk_index", align 4
@jsm_probe_one.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&brd->bd_intr_lock\00", [45 x i8] zeroinitializer }, align 32
@jsm_probe_one.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.11, i8 0, i8 31, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"jsm_found_board - Classic adapter\0A\00", [61 x i8] zeroinitializer }, align 32
@jsm_cls_ops = external dso_local global %struct.board_ops, align 4
@jsm_probe_one._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 159, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Card has no PCI Memory resources, failing board.\0A\00", [46 x i8] zeroinitializer }, align 32
@jsm_probe_one._entry_ptr.14 = internal global ptr @jsm_probe_one._entry.12, section ".printk_index", align 4
@jsm_probe_one.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.15, i8 0, i8 46, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"jsm_found_board - NEO adapter\0A\00", [33 x i8] zeroinitializer }, align 32
@jsm_neo_ops = external dso_local global %struct.board_ops, align 4
@jsm_probe_one._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 207, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@jsm_probe_one._entry_ptr.17 = internal global ptr @jsm_probe_one._entry.16, section ".printk_index", align 4
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"JSM\00", [28 x i8] zeroinitializer }, align 32
@jsm_probe_one._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.3, ptr @.str.4, i32 219, ptr @.str.21, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to hook IRQ %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@jsm_probe_one._entry_ptr.22 = internal global ptr @jsm_probe_one._entry.19, section ".printk_index", align 4
@jsm_probe_one._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.3, ptr @.str.4, i32 225, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Can't init tty devices (%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@jsm_probe_one._entry_ptr.25 = internal global ptr @jsm_probe_one._entry.23, section ".printk_index", align 4
@jsm_probe_one._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.3, ptr @.str.4, i32 233, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Can't init uart port (%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@jsm_probe_one._entry_ptr.28 = internal global ptr @jsm_probe_one._entry.26, section ".printk_index", align 4
@jsm_probe_one._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.3, ptr @.str.4, i32 240, ptr @.str.31, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"board %d: Digi Classic/Neo (rev %d), irq %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@jsm_probe_one._entry_ptr.32 = internal global ptr @jsm_probe_one._entry.29, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [18 x i64] [i64 16, i64 16, i64 40, i64 41, i64 176, i64 177, i64 200, i64 201, i64 202, i64 203, i64 206, i64 208, i64 209, i64 240, i64 241, i64 242, i64 243, i64 244]
@__sancov_gen_cov_switch_values.33 = internal global [18 x i64] [i64 16, i64 16, i64 40, i64 41, i64 176, i64 177, i64 200, i64 201, i64 202, i64 203, i64 206, i64 208, i64 209, i64 240, i64 241, i64 242, i64 243, i64 244]
@__sancov_gen_cov_switch_values.34 = internal global [6 x i64] [i64 4, i64 16, i64 40, i64 41, i64 208, i64 209]
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 29, i32 17 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 30, i32 14 }
@___asan_gen_.41 = private unnamed_addr constant [16 x i8] c"jsm_uart_driver\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 27, i32 20 }
@___asan_gen_.44 = private unnamed_addr constant [10 x i8] c"jsm_debug\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 47, i32 5 }
@___asan_gen_.47 = private unnamed_addr constant [11 x i8] c"jsm_driver\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 320, i32 26 }
@___asan_gen_.50 = private unnamed_addr constant [12 x i8] c"jsm_pci_tbl\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 297, i32 35 }
@___asan_gen_.53 = private unnamed_addr constant [16 x i8] c"jsm_err_handler\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 41, i32 40 }
@___asan_gen_.56 = private unnamed_addr constant [14 x i8] c"adapter_count\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 55, i32 13 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 59, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 65, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 110, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 123, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 158, i32 4 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 186, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 206, i32 4 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 217, i32 61 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 219, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 225, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 233, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.134 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.135 = private constant [39 x i8] c"../drivers/tty/serial/jsm/jsm_driver.c\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 239, i32 2 }
@llvm.compiler.used = appending global [52 x ptr] [ptr @__UNIQUE_ID_author236, ptr @__UNIQUE_ID_description237, ptr @__UNIQUE_ID_file238, ptr @__UNIQUE_ID_jsm_debug241, ptr @__UNIQUE_ID_jsm_debugtype240, ptr @__UNIQUE_ID_license239, ptr @__exitcall_jsm_exit_module, ptr @__initcall__kmod_jsm__244_381_jsm_init_module6, ptr @__param_jsm_debug, ptr @jsm_exit_module, ptr @jsm_probe_one._entry, ptr @jsm_probe_one._entry.12, ptr @jsm_probe_one._entry.16, ptr @jsm_probe_one._entry.19, ptr @jsm_probe_one._entry.23, ptr @jsm_probe_one._entry.26, ptr @jsm_probe_one._entry.29, ptr @jsm_probe_one._entry.7, ptr @jsm_probe_one._entry_ptr, ptr @jsm_probe_one._entry_ptr.14, ptr @jsm_probe_one._entry_ptr.17, ptr @jsm_probe_one._entry_ptr.22, ptr @jsm_probe_one._entry_ptr.25, ptr @jsm_probe_one._entry_ptr.28, ptr @jsm_probe_one._entry_ptr.32, ptr @jsm_probe_one._entry_ptr.9, ptr @.str, ptr @.str.1, ptr @jsm_uart_driver, ptr @jsm_debug, ptr @jsm_driver, ptr @jsm_pci_tbl, ptr @jsm_err_handler, ptr @jsm_probe_one.adapter_count, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @jsm_probe_one.__key, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.31], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jsm_uart_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jsm_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jsm_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jsm_pci_tbl to i32), i32 608, i32 736, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jsm_err_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jsm_probe_one.adapter_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jsm_probe_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jsm_probe_one._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jsm_probe_one.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jsm_probe_one._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jsm_probe_one._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jsm_probe_one._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jsm_probe_one._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jsm_probe_one._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jsm_probe_one._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @jsm_exit_module() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @pci_unregister_driver(ptr noundef nonnull @jsm_driver) #5
  tail call void @uart_unregister_driver(ptr noundef nonnull @jsm_uart_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @jsm_init_module() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @uart_register_driver(ptr noundef nonnull @jsm_uart_driver) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @__pci_register_driver(ptr noundef nonnull @jsm_driver, ptr noundef null, ptr noundef nonnull @.str) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then.if.end4_crit_edge, label %if.then3

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @uart_unregister_driver(ptr noundef nonnull @jsm_uart_driver) #5
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %rc.0 = phi i32 [ %call, %entry.if.end4_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.then.if.end4_crit_edge ]
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jsm_probe_one(ptr noundef %pdev, ptr nocapture noundef readnone %ent) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pci_enable_device(ptr noundef %pdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end8, label %do.end6

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev7 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.8) #8
  br label %out_disable_device

if.end8:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 168) #9
  %tobool10.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool10.not, label %if.end8.out_release_regions_crit_edge, label %if.end12

if.end8.out_release_regions_crit_edge:            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_release_regions

if.end12:                                         ; preds = %if.end8
  %1 = load i32, ptr @jsm_probe_one.adapter_count, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr @jsm_probe_one.adapter_count, align 4
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %call7.i.i, align 8
  %pci_dev = getelementptr inbounds %struct.jsm_board, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %pci_dev to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %pdev, ptr %pci_dev, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %device, align 2
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i16 %5, label %sw.default [
    i16 200, label %if.end12.do.body18_crit_edge
    i16 201, label %if.end12.do.body18_crit_edge318
    i16 202, label %if.end12.do.body18_crit_edge319
    i16 203, label %if.end12.do.body18_crit_edge320
    i16 206, label %if.end12.do.body18_crit_edge321
    i16 40, label %if.end12.sw.bb13_crit_edge
    i16 208, label %if.end12.sw.bb13_crit_edge322
    i16 176, label %if.end12.sw.bb13_crit_edge323
    i16 241, label %if.end12.sw.bb13_crit_edge324
    i16 242, label %if.end12.sw.bb13_crit_edge325
    i16 244, label %if.end12.sw.bb13_crit_edge326
    i16 41, label %if.end12.sw.bb15_crit_edge
    i16 209, label %if.end12.sw.bb15_crit_edge327
    i16 177, label %if.end12.sw.bb15_crit_edge328
    i16 240, label %if.end12.sw.bb15_crit_edge329
    i16 243, label %if.end12.sw.bb15_crit_edge330
  ]

if.end12.sw.bb15_crit_edge330:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb15

if.end12.sw.bb15_crit_edge329:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb15

if.end12.sw.bb15_crit_edge328:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb15

if.end12.sw.bb15_crit_edge327:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb15

if.end12.sw.bb15_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb15

if.end12.sw.bb13_crit_edge326:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb13

if.end12.sw.bb13_crit_edge325:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb13

if.end12.sw.bb13_crit_edge324:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb13

if.end12.sw.bb13_crit_edge323:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb13

if.end12.sw.bb13_crit_edge322:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb13

if.end12.sw.bb13_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb13

if.end12.do.body18_crit_edge321:                  ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body18

if.end12.do.body18_crit_edge320:                  ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body18

if.end12.do.body18_crit_edge319:                  ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body18

if.end12.do.body18_crit_edge318:                  ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body18

if.end12.do.body18_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body18

sw.bb13:                                          ; preds = %if.end12.sw.bb13_crit_edge, %if.end12.sw.bb13_crit_edge322, %if.end12.sw.bb13_crit_edge323, %if.end12.sw.bb13_crit_edge324, %if.end12.sw.bb13_crit_edge325, %if.end12.sw.bb13_crit_edge326
  br label %do.body18

sw.bb15:                                          ; preds = %if.end12.sw.bb15_crit_edge, %if.end12.sw.bb15_crit_edge327, %if.end12.sw.bb15_crit_edge328, %if.end12.sw.bb15_crit_edge329, %if.end12.sw.bb15_crit_edge330
  br label %do.body18

sw.default:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body18

do.body18:                                        ; preds = %sw.default, %sw.bb15, %sw.bb13, %if.end12.do.body18_crit_edge, %if.end12.do.body18_crit_edge318, %if.end12.do.body18_crit_edge319, %if.end12.do.body18_crit_edge320, %if.end12.do.body18_crit_edge321
  %.sink = phi i32 [ 4, %sw.bb13 ], [ 8, %sw.bb15 ], [ 1, %sw.default ], [ 2, %if.end12.do.body18_crit_edge ], [ 2, %if.end12.do.body18_crit_edge318 ], [ 2, %if.end12.do.body18_crit_edge319 ], [ 2, %if.end12.do.body18_crit_edge320 ], [ 2, %if.end12.do.body18_crit_edge321 ]
  %maxports = getelementptr inbounds %struct.jsm_board, ptr %call7.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %maxports to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %.sink, ptr %maxports, align 8
  %bd_intr_lock = getelementptr inbounds %struct.jsm_board, ptr %call7.i.i, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %bd_intr_lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @jsm_probe_one.__key, i16 noundef signext 3) #5
  %revision = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 12
  %8 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %revision, align 4
  %rev = getelementptr inbounds %struct.jsm_board, ptr %call7.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %rev to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %rev, align 8
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %11 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq, align 4
  %irq22 = getelementptr inbounds %struct.jsm_board, ptr %call7.i.i, i32 0, i32 7
  %13 = ptrtoint ptr %irq22 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %irq22, align 4
  %14 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %device, align 2
  %16 = zext i16 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.33)
  switch i16 %15, label %do.body18.cleanup_crit_edge [
    i16 40, label %do.body18.do.body26_crit_edge
    i16 208, label %do.body18.do.body26_crit_edge331
    i16 41, label %do.body18.do.body26_crit_edge332
    i16 209, label %do.body18.do.body26_crit_edge333
    i16 200, label %do.body18.do.body100_crit_edge
    i16 201, label %do.body18.do.body100_crit_edge334
    i16 202, label %do.body18.do.body100_crit_edge335
    i16 203, label %do.body18.do.body100_crit_edge336
    i16 206, label %do.body18.do.body100_crit_edge337
    i16 176, label %do.body18.do.body100_crit_edge338
    i16 241, label %do.body18.do.body100_crit_edge339
    i16 242, label %do.body18.do.body100_crit_edge340
    i16 244, label %do.body18.do.body100_crit_edge341
    i16 177, label %do.body18.do.body100_crit_edge342
    i16 240, label %do.body18.do.body100_crit_edge343
    i16 243, label %do.body18.do.body100_crit_edge344
  ]

do.body18.do.body100_crit_edge344:                ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body100

do.body18.do.body100_crit_edge343:                ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body100

do.body18.do.body100_crit_edge342:                ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body100

do.body18.do.body100_crit_edge341:                ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body100

do.body18.do.body100_crit_edge340:                ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body100

do.body18.do.body100_crit_edge339:                ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body100

do.body18.do.body100_crit_edge338:                ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body100

do.body18.do.body100_crit_edge337:                ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body100

do.body18.do.body100_crit_edge336:                ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body100

do.body18.do.body100_crit_edge335:                ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body100

do.body18.do.body100_crit_edge334:                ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body100

do.body18.do.body100_crit_edge:                   ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body100

do.body18.do.body26_crit_edge333:                 ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body26

do.body18.do.body26_crit_edge332:                 ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body26

do.body18.do.body26_crit_edge331:                 ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body26

do.body18.do.body26_crit_edge:                    ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body26

do.body18.cleanup_crit_edge:                      ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body26:                                        ; preds = %do.body18.do.body26_crit_edge, %do.body18.do.body26_crit_edge331, %do.body18.do.body26_crit_edge332, %do.body18.do.body26_crit_edge333
  %17 = load i32, ptr @jsm_debug, align 4
  %and = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool27.not = icmp eq i32 %and, 0
  br i1 %tobool27.not, label %do.body26.do.end42_crit_edge, label %do.body29

do.body26.do.end42_crit_edge:                     ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end42

do.body29:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jsm_probe_one.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@jsm_probe_one, %if.then34)) #5
          to label %do.end42 [label %if.then34], !srcloc !90

if.then34:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pci_dev, align 4
  %dev36 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @jsm_probe_one.__UNIQUE_ID_ddebug242, ptr noundef %dev36, ptr noundef nonnull @.str.11) #5
  br label %do.end42

do.end42:                                         ; preds = %if.then34, %do.body29, %do.body26.do.end42_crit_edge
  %arrayidx = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 4
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 8
  %conv43 = zext i32 %21 to i64
  %membase = getelementptr inbounds %struct.jsm_board, ptr %call7.i.i, i32 0, i32 8
  %end = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 4, i32 1
  %22 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %end, align 4
  %conv46 = zext i32 %23 to i64
  %membase_end = getelementptr inbounds %struct.jsm_board, ptr %call7.i.i, i32 0, i32 9
  %24 = ptrtoint ptr %membase_end to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %conv46, ptr %membase_end, align 8
  %and48 = and i64 %conv43, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and48)
  %tobool49.not = icmp eq i64 %and48, 0
  %storemerge311.v = select i1 %tobool49.not, i64 4294967280, i64 4294967292
  %storemerge311 = and i64 %storemerge311.v, %conv43
  %25 = ptrtoint ptr %membase to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %storemerge311, ptr %membase, align 8
  %arrayidx57 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1
  %26 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx57, align 8
  %iobase = getelementptr inbounds %struct.jsm_board, ptr %call7.i.i, i32 0, i32 11
  %end62 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1, i32 1
  %28 = ptrtoint ptr %end62 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %end62, align 4
  %conv63 = zext i32 %29 to i64
  %iobase_end = getelementptr inbounds %struct.jsm_board, ptr %call7.i.i, i32 0, i32 12
  %30 = ptrtoint ptr %iobase_end to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %conv63, ptr %iobase_end, align 8
  %and66 = and i32 %27, 65534
  %conv67 = zext i32 %and66 to i64
  %31 = ptrtoint ptr %iobase to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %conv67, ptr %iobase, align 8
  %bd_ops = getelementptr inbounds %struct.jsm_board, ptr %call7.i.i, i32 0, i32 16
  %32 = ptrtoint ptr %bd_ops to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @jsm_cls_ops, ptr %bd_ops, align 8
  %bd_uart_offset = getelementptr inbounds %struct.jsm_board, ptr %call7.i.i, i32 0, i32 13
  %33 = ptrtoint ptr %bd_uart_offset to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 8, ptr %bd_uart_offset, align 8
  %bd_dividend = getelementptr inbounds %struct.jsm_board, ptr %call7.i.i, i32 0, i32 15
  %34 = ptrtoint ptr %bd_dividend to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 921600, ptr %bd_dividend, align 4
  %conv70 = trunc i64 %storemerge311 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp = icmp eq i32 %23, 0
  %sub = sub i32 1, %21
  %add = add i32 %sub, %23
  %cond = select i1 %cmp, i32 0, i32 %add
  %call81 = tail call ptr @ioremap(i32 noundef %conv70, i32 noundef %cond) #5
  %re_map_membase = getelementptr inbounds %struct.jsm_board, ptr %call7.i.i, i32 0, i32 10
  %35 = ptrtoint ptr %re_map_membase to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call81, ptr %re_map_membase, align 8
  %tobool83.not = icmp eq ptr %call81, null
  br i1 %tobool83.not, label %do.end87, label %do.body90

do.end87:                                         ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #7
  %dev88 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev88, ptr noundef nonnull @.str.13) #8
  br label %out_kfree_brd

do.body90:                                        ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !91
  tail call void @arm_heavy_mb() #5
  %36 = ptrtoint ptr %iobase to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %iobase, align 8
  %38 = trunc i64 %37 to i32
  %39 = add i32 %38, 76
  %40 = and i32 %39, 1048575
  %conv97 = or i32 %40, -18874368
  %41 = inttoptr i32 %conv97 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %41, i8 67) #5, !srcloc !92
  br label %sw.epilog178

do.body100:                                       ; preds = %do.body18.do.body100_crit_edge, %do.body18.do.body100_crit_edge334, %do.body18.do.body100_crit_edge335, %do.body18.do.body100_crit_edge336, %do.body18.do.body100_crit_edge337, %do.body18.do.body100_crit_edge338, %do.body18.do.body100_crit_edge339, %do.body18.do.body100_crit_edge340, %do.body18.do.body100_crit_edge341, %do.body18.do.body100_crit_edge342, %do.body18.do.body100_crit_edge343, %do.body18.do.body100_crit_edge344
  %42 = load i32, ptr @jsm_debug, align 4
  %and101 = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101)
  %tobool102.not = icmp eq i32 %and101, 0
  br i1 %tobool102.not, label %do.body100.do.end124_crit_edge, label %do.body104

do.body100.do.end124_crit_edge:                   ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end124

do.body104:                                       ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jsm_probe_one.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@jsm_probe_one, %if.then116)) #5
          to label %do.end124 [label %if.then116], !srcloc !90

if.then116:                                       ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #7
  %43 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pci_dev, align 4
  %dev118 = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @jsm_probe_one.__UNIQUE_ID_ddebug243, ptr noundef %dev118, ptr noundef nonnull @.str.15) #5
  br label %do.end124

do.end124:                                        ; preds = %if.then116, %do.body104, %do.body100.do.end124_crit_edge
  %resource125 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %45 = ptrtoint ptr %resource125 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %resource125, align 8
  %conv128 = zext i32 %46 to i64
  %membase129 = getelementptr inbounds %struct.jsm_board, ptr %call7.i.i, i32 0, i32 8
  %end132 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %47 = ptrtoint ptr %end132 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %end132, align 4
  %conv133 = zext i32 %48 to i64
  %membase_end134 = getelementptr inbounds %struct.jsm_board, ptr %call7.i.i, i32 0, i32 9
  %49 = ptrtoint ptr %membase_end134 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %conv133, ptr %membase_end134, align 8
  %and136 = and i64 %conv128, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and136)
  %tobool137.not = icmp eq i64 %and136, 0
  %storemerge.v = select i1 %tobool137.not, i64 4294967280, i64 4294967292
  %storemerge = and i64 %storemerge.v, %conv128
  %50 = ptrtoint ptr %membase129 to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %storemerge, ptr %membase129, align 8
  %bd_ops145 = getelementptr inbounds %struct.jsm_board, ptr %call7.i.i, i32 0, i32 16
  %51 = ptrtoint ptr %bd_ops145 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @jsm_neo_ops, ptr %bd_ops145, align 8
  %bd_uart_offset146 = getelementptr inbounds %struct.jsm_board, ptr %call7.i.i, i32 0, i32 13
  %52 = ptrtoint ptr %bd_uart_offset146 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 512, ptr %bd_uart_offset146, align 8
  %bd_dividend147 = getelementptr inbounds %struct.jsm_board, ptr %call7.i.i, i32 0, i32 15
  %53 = ptrtoint ptr %bd_dividend147 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 921600, ptr %bd_dividend147, align 4
  %conv149 = trunc i64 %storemerge to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp153 = icmp eq i32 %48, 0
  %sub163 = sub i32 1, %46
  %add164 = add i32 %sub163, %48
  %cond166 = select i1 %cmp153, i32 0, i32 %add164
  %call167 = tail call ptr @ioremap(i32 noundef %conv149, i32 noundef %cond166) #5
  %re_map_membase168 = getelementptr inbounds %struct.jsm_board, ptr %call7.i.i, i32 0, i32 10
  %54 = ptrtoint ptr %re_map_membase168 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call167, ptr %re_map_membase168, align 8
  %tobool170.not = icmp eq ptr %call167, null
  br i1 %tobool170.not, label %do.end174, label %do.end124.sw.epilog178_crit_edge

do.end124.sw.epilog178_crit_edge:                 ; preds = %do.end124
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog178

do.end174:                                        ; preds = %do.end124
  call void @__sanitizer_cov_trace_pc() #7
  %dev175 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev175, ptr noundef nonnull @.str.13) #8
  br label %out_kfree_brd

sw.epilog178:                                     ; preds = %do.end124.sw.epilog178_crit_edge, %do.body90
  %55 = ptrtoint ptr %irq22 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %irq22, align 4
  %bd_ops180 = getelementptr inbounds %struct.jsm_board, ptr %call7.i.i, i32 0, i32 16
  %57 = ptrtoint ptr %bd_ops180 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %bd_ops180, align 8
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %56, ptr noundef %60, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.18, ptr noundef nonnull %call7.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool182.not = icmp eq i32 %call.i, 0
  br i1 %tobool182.not, label %if.end189, label %do.end186

do.end186:                                        ; preds = %sw.epilog178
  call void @__sanitizer_cov_trace_pc() #7
  %dev187 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %61 = ptrtoint ptr %irq22 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %irq22, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev187, ptr noundef nonnull @.str.20, i32 noundef %62) #8
  br label %out_iounmap

if.end189:                                        ; preds = %sw.epilog178
  %call190 = tail call i32 @jsm_tty_init(ptr noundef nonnull %call7.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call190)
  %cmp191 = icmp slt i32 %call190, 0
  br i1 %cmp191, label %do.end196, label %if.end198

do.end196:                                        ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #7
  %dev197 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev197, ptr noundef nonnull @.str.24, i32 noundef %call190) #8
  br label %out_free_irq

if.end198:                                        ; preds = %if.end189
  %call199 = tail call i32 @jsm_uart_port_init(ptr noundef nonnull %call7.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call199)
  %cmp200 = icmp slt i32 %call199, 0
  %dev206 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  br i1 %cmp200, label %do.end205, label %do.end210

do.end205:                                        ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev206, ptr noundef nonnull @.str.27, i32 noundef %call199) #8
  br label %out_free_irq

do.end210:                                        ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #7
  %63 = load i32, ptr @jsm_probe_one.adapter_count, align 4
  %64 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %rev, align 8
  %conv213 = zext i8 %65 to i32
  %66 = ptrtoint ptr %irq22 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %irq22, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev206, ptr noundef nonnull @.str.30, i32 noundef %63, i32 noundef %conv213, i32 noundef %67) #8
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %68 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %call215 = tail call i32 @pci_save_state(ptr noundef %pdev) #5
  br label %cleanup

out_free_irq:                                     ; preds = %do.end205, %do.end196
  %call216 = tail call i32 @jsm_remove_uart_port(ptr noundef nonnull %call7.i.i) #5
  %69 = ptrtoint ptr %irq22 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %irq22, align 4
  %call218 = tail call ptr @free_irq(i32 noundef %70, ptr noundef nonnull %call7.i.i) #5
  br label %out_iounmap

out_iounmap:                                      ; preds = %out_free_irq, %do.end186
  %rc.1 = phi i32 [ %call.i, %do.end186 ], [ -6, %out_free_irq ]
  %re_map_membase219 = getelementptr inbounds %struct.jsm_board, ptr %call7.i.i, i32 0, i32 10
  %71 = ptrtoint ptr %re_map_membase219 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %re_map_membase219, align 8
  tail call void @iounmap(ptr noundef %72) #5
  br label %out_kfree_brd

out_kfree_brd:                                    ; preds = %out_iounmap, %do.end174, %do.end87
  %rc.2 = phi i32 [ %rc.1, %out_iounmap ], [ -12, %do.end174 ], [ -12, %do.end87 ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %out_release_regions

out_release_regions:                              ; preds = %out_kfree_brd, %if.end8.out_release_regions_crit_edge
  %rc.3 = phi i32 [ %rc.2, %out_kfree_brd ], [ -12, %if.end8.out_release_regions_crit_edge ]
  tail call void @pci_release_regions(ptr noundef %pdev) #5
  br label %out_disable_device

out_disable_device:                               ; preds = %out_release_regions, %do.end6
  %rc.4 = phi i32 [ %call1, %do.end6 ], [ %rc.3, %out_release_regions ]
  tail call void @pci_disable_device(ptr noundef %pdev) #5
  br label %cleanup

cleanup:                                          ; preds = %out_disable_device, %do.end210, %do.body18.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %do.end210 ], [ -6, %do.body18.cleanup_crit_edge ], [ %call, %do.end ], [ %rc.4, %out_disable_device ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @jsm_remove_one(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device, align 2
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.34)
  switch i16 %3, label %entry.sw.epilog_crit_edge [
    i16 40, label %entry.do.body_crit_edge
    i16 208, label %entry.do.body_crit_edge33
    i16 41, label %entry.do.body_crit_edge34
    i16 209, label %entry.do.body_crit_edge35
  ]

entry.do.body_crit_edge35:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

entry.do.body_crit_edge34:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

entry.do.body_crit_edge33:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge33, %entry.do.body_crit_edge34, %entry.do.body_crit_edge35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !93
  tail call void @arm_heavy_mb() #5
  %iobase = getelementptr inbounds %struct.jsm_board, ptr %1, i32 0, i32 11
  %5 = ptrtoint ptr %iobase to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %iobase, align 8
  %7 = trunc i64 %6 to i32
  %8 = add i32 %7, 76
  %9 = and i32 %8, 1048575
  %conv2 = or i32 %9, -18874368
  %10 = inttoptr i32 %conv2 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 0) #5, !srcloc !92
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body, %entry.sw.epilog_crit_edge
  %call4 = tail call i32 @jsm_remove_uart_port(ptr noundef %1) #5
  %irq = getelementptr inbounds %struct.jsm_board, ptr %1, i32 0, i32 7
  %11 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq, align 4
  %call5 = tail call ptr @free_irq(i32 noundef %12, ptr noundef %1) #5
  %re_map_membase = getelementptr inbounds %struct.jsm_board, ptr %1, i32 0, i32 10
  %13 = ptrtoint ptr %re_map_membase to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %re_map_membase, align 8
  tail call void @iounmap(ptr noundef %14) #5
  %maxports = getelementptr inbounds %struct.jsm_board, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %maxports to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %maxports, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp31.not = icmp eq i32 %16, 0
  br i1 %cmp31.not, label %sw.epilog.for.end_crit_edge, label %sw.epilog.for.body_crit_edge

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  br label %for.body

sw.epilog.for.end_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %sw.epilog.for.body_crit_edge
  %i.032 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %sw.epilog.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.jsm_board, ptr %1, i32 0, i32 14, i32 %i.032
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %18, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %ch_rqueue = getelementptr inbounds %struct.jsm_channel, ptr %18, i32 0, i32 19
  %19 = ptrtoint ptr %ch_rqueue to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ch_rqueue, align 8
  tail call void @kfree(ptr noundef %20) #5
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx, align 4
  %ch_equeue = getelementptr inbounds %struct.jsm_channel, ptr %22, i32 0, i32 22
  %23 = ptrtoint ptr %ch_equeue to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ch_equeue, align 8
  tail call void @kfree(ptr noundef %24) #5
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx, align 4
  tail call void @kfree(ptr noundef %26) #5
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.032, 1
  %27 = ptrtoint ptr %maxports to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %maxports, align 8
  %cmp = icmp ult i32 %inc, %28
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %sw.epilog.for.end_crit_edge
  tail call void @pci_release_regions(ptr noundef %pdev) #5
  tail call void @pci_disable_device(ptr noundef %pdev) #5
  tail call void @kfree(ptr noundef %1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jsm_tty_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jsm_uart_port_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_save_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jsm_remove_uart_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jsm_io_error_detected(ptr nocapture noundef readonly %pdev, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @jsm_remove_uart_port(ptr noundef %1) #5
  ret i32 3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jsm_io_slot_reset(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pci_enable_device(ptr noundef %pdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @pci_set_master(ptr noundef %pdev) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 5, %if.end ], [ 4, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @jsm_io_resume(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @pci_restore_state(ptr noundef %pdev) #5
  %call1 = tail call i32 @pci_save_state(ptr noundef %pdev) #5
  %call2 = tail call i32 @jsm_uart_port_init(ptr noundef %1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_restore_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !16, !18, !20, !22, !24, !25, !27, !29, !31, !33, !34, !35, !36, !37, !38, !39, !41, !42, !43, !45, !46, !48, !49, !51, !52, !53, !55, !56, !58, !59, !61, !63, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !79}
!llvm.module.flags = !{!81, !82, !83, !84, !85, !86, !87, !88}
!llvm.ident = !{!89}

!0 = !{ptr @__UNIQUE_ID_author236, !1, !"__UNIQUE_ID_author236", i1 false, i1 false}
!1 = !{!"../drivers/tty/serial/jsm/jsm_driver.c", i32 19, i32 1}
!2 = !{ptr @__UNIQUE_ID_description237, !3, !"__UNIQUE_ID_description237", i1 false, i1 false}
!3 = !{!"../drivers/tty/serial/jsm/jsm_driver.c", i32 20, i32 1}
!4 = !{ptr @__UNIQUE_ID_file238, !5, !"__UNIQUE_ID_file238", i1 false, i1 false}
!5 = !{!"../drivers/tty/serial/jsm/jsm_driver.c", i32 21, i32 1}
!6 = !{ptr @__UNIQUE_ID_license239, !5, !"__UNIQUE_ID_license239", i1 false, i1 false}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/tty/serial/jsm/jsm_driver.c", i32 29, i32 17}
!9 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/tty/serial/jsm/jsm_driver.c", i32 30, i32 14}
!11 = !{ptr @jsm_uart_driver, !12, !"jsm_uart_driver", i1 false, i1 false}
!12 = !{!"../drivers/tty/serial/jsm/jsm_driver.c", i32 27, i32 20}
!13 = !{ptr @__param_jsm_debug, !14, !"__param_jsm_debug", i1 false, i1 false}
!14 = !{!"../drivers/tty/serial/jsm/jsm_driver.c", i32 48, i32 1}
!15 = !{ptr @__UNIQUE_ID_jsm_debugtype240, !14, !"__UNIQUE_ID_jsm_debugtype240", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_jsm_debug241, !17, !"__UNIQUE_ID_jsm_debug241", i1 false, i1 false}
!17 = !{!"../drivers/tty/serial/jsm/jsm_driver.c", i32 49, i32 1}
!18 = !{ptr @__initcall__kmod_jsm__244_381_jsm_init_module6, !19, !"__initcall__kmod_jsm__244_381_jsm_init_module6", i1 false, i1 false}
!19 = !{!"../drivers/tty/serial/jsm/jsm_driver.c", i32 381, i32 1}
!20 = !{ptr @__exitcall_jsm_exit_module, !21, !"__exitcall_jsm_exit_module", i1 false, i1 false}
!21 = !{!"../drivers/tty/serial/jsm/jsm_driver.c", i32 382, i32 1}
!22 = !{ptr @jsm_debug, !23, !"jsm_debug", i1 false, i1 false}
!23 = !{!"../drivers/tty/serial/jsm/jsm_driver.c", i32 47, i32 5}
!24 = !{ptr @__param_str_jsm_debug, !14, !"__param_str_jsm_debug", i1 false, i1 false}
!25 = !{ptr @jsm_driver, !26, !"jsm_driver", i1 false, i1 false}
!26 = !{!"../drivers/tty/serial/jsm/jsm_driver.c", i32 320, i32 26}
!27 = !{ptr @jsm_pci_tbl, !28, !"jsm_pci_tbl", i1 false, i1 false}
!28 = !{!"../drivers/tty/serial/jsm/jsm_driver.c", i32 297, i32 35}
!29 = !{ptr @jsm_probe_one.adapter_count, !30, !"adapter_count", i1 false, i1 false}
!30 = !{!"../drivers/tty/serial/jsm/jsm_driver.c", i32 55, i32 13}
!31 = !{ptr @.str.2, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/tty/serial/jsm/jsm_driver.c", i32 59, i32 3}
!33 = !{ptr @.str.3, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.4, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @jsm_probe_one._entry, !32, !"_entry", i1 false, i1 false}
!38 = !{ptr @jsm_probe_one._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.8, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/tty/serial/jsm/jsm_driver.c", i32 65, i32 3}
!41 = !{ptr @jsm_probe_one._entry.7, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @jsm_probe_one._entry_ptr.9, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @jsm_probe_one.__key, !44, !"__key", i1 false, i1 false}
!44 = !{!"../drivers/tty/serial/jsm/jsm_driver.c", i32 110, i32 2}
!45 = !{ptr @.str.10, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.11, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/tty/serial/jsm/jsm_driver.c", i32 123, i32 3}
!48 = !{ptr @jsm_probe_one.__UNIQUE_ID_ddebug242, !47, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!49 = !{ptr @.str.13, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/tty/serial/jsm/jsm_driver.c", i32 158, i32 4}
!51 = !{ptr @jsm_probe_one._entry.12, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @jsm_probe_one._entry_ptr.14, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.15, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/tty/serial/jsm/jsm_driver.c", i32 186, i32 3}
!55 = !{ptr @jsm_probe_one.__UNIQUE_ID_ddebug243, !54, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!56 = !{ptr @jsm_probe_one._entry.16, !57, !"_entry", i1 false, i1 false}
!57 = !{!"../drivers/tty/serial/jsm/jsm_driver.c", i32 206, i32 4}
!58 = !{ptr @jsm_probe_one._entry_ptr.17, !57, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.18, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/tty/serial/jsm/jsm_driver.c", i32 217, i32 61}
!61 = !{ptr @.str.20, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/tty/serial/jsm/jsm_driver.c", i32 219, i32 3}
!63 = !{ptr @.str.21, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @jsm_probe_one._entry.19, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @jsm_probe_one._entry_ptr.22, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/tty/serial/jsm/jsm_driver.c", i32 225, i32 3}
!68 = !{ptr @jsm_probe_one._entry.23, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @jsm_probe_one._entry_ptr.25, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.27, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/tty/serial/jsm/jsm_driver.c", i32 233, i32 3}
!72 = !{ptr @jsm_probe_one._entry.26, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @jsm_probe_one._entry_ptr.28, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/tty/serial/jsm/jsm_driver.c", i32 239, i32 2}
!76 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @jsm_probe_one._entry.29, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @jsm_probe_one._entry_ptr.32, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @jsm_err_handler, !80, !"jsm_err_handler", i1 false, i1 false}
!80 = !{!"../drivers/tty/serial/jsm/jsm_driver.c", i32 41, i32 40}
!81 = !{i32 1, !"wchar_size", i32 2}
!82 = !{i32 1, !"min_enum_size", i32 4}
!83 = !{i32 8, !"branch-target-enforcement", i32 0}
!84 = !{i32 8, !"sign-return-address", i32 0}
!85 = !{i32 8, !"sign-return-address-all", i32 0}
!86 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!87 = !{i32 7, !"uwtable", i32 1}
!88 = !{i32 7, !"frame-pointer", i32 2}
!89 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!90 = !{i64 2148961117, i64 2148961122, i64 2148961135, i64 2148961179, i64 2148961213, i64 2148961234}
!91 = !{i64 2154719995}
!92 = !{i64 4987350}
!93 = !{i64 2154731991}
