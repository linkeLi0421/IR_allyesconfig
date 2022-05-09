; ModuleID = '/llk/IR_all_yes/drivers/nfc/nfcmrvl/uart.c_pt.bc'
source_filename = "../drivers/nfc/nfcmrvl/uart.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nci_uart = type { ptr, %struct.nci_uart_ops, ptr, i32, ptr, %struct.spinlock, %struct.work_struct, ptr, i32, %struct.sk_buff_head, ptr, ptr, i32, ptr }
%struct.nci_uart_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.sk_buff_head = type { %union.anon.93, i32, %struct.spinlock }
%union.anon.93 = type { %struct.anon.94 }
%struct.anon.94 = type { ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.71 }
%union.anon.71 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nfcmrvl_if_ops = type { ptr, ptr, ptr, ptr }
%struct.nfcmrvl_platform_data = type { i32, i32, i32, i32, i32, i32 }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.38, %struct.anon.39, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.38 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.39 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.nfcmrvl_private = type { i32, %struct.nfcmrvl_platform_data, ptr, %struct.nfcmrvl_fw_dnld, i8, ptr, ptr, i32, ptr }
%struct.nfcmrvl_fw_dnld = type { [33 x i8], ptr, ptr, ptr, i32, i32, i32, i32, ptr, %struct.work_struct, %struct.sk_buff_head, %struct.timer_list }
%struct.nfc_dev = type { i32, i32, ptr, i32, i32, %struct.device, i8, i8, i8, i8, ptr, i8, %struct.nfc_genl_data, i32, %struct.list_head, i32, i32, %struct.timer_list, %struct.work_struct, i8, ptr, ptr, i32, ptr, ptr }
%struct.nfc_genl_data = type { i32, %struct.mutex }
%struct.tty_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nfcmrvl_fw_uart_config = type <{ i8, i32 }>

@__initcall__kmod_nfcmrvl_uart__275_192_nfcmrvl_nci_uart_init6 = internal global ptr @nfcmrvl_nci_uart_init, section ".initcall6.init", align 4
@nfcmrvl_nci_uart = internal global { %struct.nci_uart, [48 x i8] } { %struct.nci_uart { ptr null, %struct.nci_uart_ops { ptr @nfcmrvl_nci_uart_open, ptr @nfcmrvl_nci_uart_close, ptr @nfcmrvl_nci_uart_recv, ptr null, ptr @nfcmrvl_nci_uart_tx_start, ptr @nfcmrvl_nci_uart_tx_done }, ptr @.str, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.work_struct zeroinitializer, ptr null, i32 0, %struct.sk_buff_head zeroinitializer, ptr null, ptr null, i32 0, ptr null }, [48 x i8] zeroinitializer }, align 32
@__exitcall_nfcmrvl_nci_uart_exit = internal global ptr @nfcmrvl_nci_uart_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author276 = internal constant [47 x i8] c"nfcmrvl_uart.author=Marvell International Ltd.\00", section ".modinfo", align 1
@__UNIQUE_ID_description277 = internal constant [47 x i8] c"nfcmrvl_uart.description=Marvell NFC-over-UART\00", section ".modinfo", align 1
@__UNIQUE_ID_file278 = internal constant [51 x i8] c"nfcmrvl_uart.file=drivers/nfc/nfcmrvl/nfcmrvl_uart\00", section ".modinfo", align 1
@__UNIQUE_ID_license279 = internal constant [28 x i8] c"nfcmrvl_uart.license=GPL v2\00", section ".modinfo", align 1
@__param_str_flow_control = internal constant [26 x i8] c"nfcmrvl_uart.flow_control\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@flow_control = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_flow_control = internal constant %struct.kernel_param { ptr @__param_str_flow_control, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.71 { ptr @flow_control } }, section "__param", align 4
@__UNIQUE_ID_flow_controltype280 = internal constant [40 x i8] c"nfcmrvl_uart.parmtype=flow_control:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_flow_control281 = internal constant [72 x i8] c"nfcmrvl_uart.parm=flow_control:Tell if UART needs flow control at init.\00", section ".modinfo", align 1
@__param_str_break_control = internal constant [27 x i8] c"nfcmrvl_uart.break_control\00", align 1
@break_control = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_break_control = internal constant %struct.kernel_param { ptr @__param_str_break_control, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.71 { ptr @break_control } }, section "__param", align 4
@__UNIQUE_ID_break_controltype282 = internal constant [41 x i8] c"nfcmrvl_uart.parmtype=break_control:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_break_control283 = internal constant [77 x i8] c"nfcmrvl_uart.parm=break_control:Tell if UART driver must drive break signal.\00", section ".modinfo", align 1
@__param_str_hci_muxed = internal constant [23 x i8] c"nfcmrvl_uart.hci_muxed\00", align 1
@hci_muxed = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_hci_muxed = internal constant %struct.kernel_param { ptr @__param_str_hci_muxed, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.71 { ptr @hci_muxed } }, section "__param", align 4
@__UNIQUE_ID_hci_muxedtype284 = internal constant [37 x i8] c"nfcmrvl_uart.parmtype=hci_muxed:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_hci_muxed285 = internal constant [67 x i8] c"nfcmrvl_uart.parm=hci_muxed:Tell if transport is muxed in HCI one.\00", section ".modinfo", align 1
@__param_str_reset_n_io = internal constant [24 x i8] c"nfcmrvl_uart.reset_n_io\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@reset_n_io = internal global { i32, [28 x i8] } { i32 -22, [28 x i8] zeroinitializer }, align 32
@__param_reset_n_io = internal constant %struct.kernel_param { ptr @__param_str_reset_n_io, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.71 { ptr @reset_n_io } }, section "__param", align 4
@__UNIQUE_ID_reset_n_iotype286 = internal constant [37 x i8] c"nfcmrvl_uart.parmtype=reset_n_io:int\00", section ".modinfo", align 1
@__UNIQUE_ID_reset_n_io287 = internal constant [67 x i8] c"nfcmrvl_uart.parm=reset_n_io:GPIO that is wired to RESET_N signal.\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nfcmrvl_uart\00", [19 x i8] zeroinitializer }, align 32
@nfcmrvl_nci_uart_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 116, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016No platform data / DT -> fallback to module params\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nfcmrvl_nci_uart_open\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/nfc/nfcmrvl/uart.c\00", [37 x i8] zeroinitializer }, align 32
@nfcmrvl_nci_uart_open._entry_ptr = internal global ptr @nfcmrvl_nci_uart_open._entry, section ".printk_index", align 4
@uart_ops = internal constant { %struct.nfcmrvl_if_ops, [16 x i8] } { %struct.nfcmrvl_if_ops { ptr @nfcmrvl_uart_nci_open, ptr @nfcmrvl_uart_nci_close, ptr @nfcmrvl_uart_nci_send, ptr @nfcmrvl_uart_nci_update_config }, [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"marvell,nfc-uart\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mrvl,nfc-uart\00", [18 x i8] zeroinitializer }, align 32
@nfcmrvl_uart_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 74, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013Failed to get generic entries\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nfcmrvl_uart_parse_dt\00", [42 x i8] zeroinitializer }, align 32
@nfcmrvl_uart_parse_dt._entry_ptr = internal global ptr @nfcmrvl_uart_parse_dt._entry, section ".printk_index", align 4
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"flow-control\00", [19 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"break-control\00", [18 x i8] zeroinitializer }, align 32
@___asan_gen_.10 = private unnamed_addr constant [17 x i8] c"nfcmrvl_nci_uart\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 180, i32 24 }
@___asan_gen_.13 = private unnamed_addr constant [13 x i8] c"flow_control\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 16, i32 21 }
@___asan_gen_.16 = private unnamed_addr constant [14 x i8] c"break_control\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 17, i32 21 }
@___asan_gen_.19 = private unnamed_addr constant [10 x i8] c"hci_muxed\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 15, i32 21 }
@___asan_gen_.22 = private unnamed_addr constant [11 x i8] c"reset_n_io\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 18, i32 12 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 182, i32 12 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 116, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant [9 x i8] c"uart_ops\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 52, i32 36 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 65, i32 47 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 67, i32 48 }
@___asan_gen_.49 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 74, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 79, i32 37 }
@___asan_gen_.61 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.62 = private constant [30 x i8] c"../drivers/nfc/nfcmrvl/uart.c\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 84, i32 37 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @__UNIQUE_ID_author276, ptr @__UNIQUE_ID_break_control283, ptr @__UNIQUE_ID_break_controltype282, ptr @__UNIQUE_ID_description277, ptr @__UNIQUE_ID_file278, ptr @__UNIQUE_ID_flow_control281, ptr @__UNIQUE_ID_flow_controltype280, ptr @__UNIQUE_ID_hci_muxed285, ptr @__UNIQUE_ID_hci_muxedtype284, ptr @__UNIQUE_ID_license279, ptr @__UNIQUE_ID_reset_n_io287, ptr @__UNIQUE_ID_reset_n_iotype286, ptr @__exitcall_nfcmrvl_nci_uart_exit, ptr @__initcall__kmod_nfcmrvl_uart__275_192_nfcmrvl_nci_uart_init6, ptr @__param_break_control, ptr @__param_flow_control, ptr @__param_hci_muxed, ptr @__param_reset_n_io, ptr @nfcmrvl_nci_uart_exit, ptr @nfcmrvl_nci_uart_open._entry, ptr @nfcmrvl_nci_uart_open._entry_ptr, ptr @nfcmrvl_uart_parse_dt._entry, ptr @nfcmrvl_uart_parse_dt._entry_ptr, ptr @nfcmrvl_nci_uart, ptr @flow_control, ptr @break_control, ptr @hci_muxed, ptr @reset_n_io, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @uart_ops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfcmrvl_nci_uart to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flow_control to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @break_control to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_muxed to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reset_n_io to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfcmrvl_nci_uart_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfcmrvl_uart_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nfcmrvl_nci_uart_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nci_uart_register(ptr noundef nonnull @nfcmrvl_nci_uart) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nfcmrvl_nci_uart_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @nci_uart_unregister(ptr noundef nonnull @nfcmrvl_nci_uart) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nci_uart_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nci_uart_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfcmrvl_nci_uart_open(ptr noundef %nu) #2 align 64 {
entry:
  %config = alloca %struct.nfcmrvl_platform_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #7
  %0 = getelementptr inbounds %struct.nfcmrvl_platform_data, ptr %config, i32 0, i32 1
  %1 = getelementptr inbounds %struct.nfcmrvl_platform_data, ptr %config, i32 0, i32 2
  %2 = getelementptr inbounds %struct.nfcmrvl_platform_data, ptr %config, i32 0, i32 3
  %tty = getelementptr inbounds %struct.nci_uart, ptr %nu, i32 0, i32 7
  %3 = call ptr @memset(ptr %config, i32 255, i32 24)
  %4 = ptrtoint ptr %tty to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tty, align 4
  %dev1 = getelementptr inbounds %struct.tty_struct, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %parent = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  %tobool2.not = icmp eq ptr %9, null
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %of_node = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 27
  %10 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %of_node, align 8
  %tobool5.not = icmp eq ptr %11, null
  br i1 %tobool5.not, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  %call.i = tail call ptr @of_get_compatible_child(ptr noundef nonnull %11, ptr noundef nonnull @.str.4) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.i, label %if.then.if.end4.i_crit_edge

if.then.if.end4.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

if.then.i:                                        ; preds = %if.then
  %call1.i = tail call ptr @of_get_compatible_child(ptr noundef nonnull %11, ptr noundef nonnull @.str.5) #7
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %if.then.i.do.end_crit_edge, label %if.then.i.if.end4.i_crit_edge

if.then.i.if.end4.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

if.then.i.do.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end4.i:                                        ; preds = %if.then.i.if.end4.i_crit_edge, %if.then.if.end4.i_crit_edge
  %matched_node.0.i = phi ptr [ %call.i, %if.then.if.end4.i_crit_edge ], [ %call1.i, %if.then.i.if.end4.i_crit_edge ]
  %call5.i = call i32 @nfcmrvl_parse_dt(ptr noundef nonnull %matched_node.0.i, ptr noundef nonnull %config) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp.i = icmp slt i32 %call5.i, 0
  br i1 %cmp.i, label %nfcmrvl_uart_parse_dt.exit, label %if.end9

nfcmrvl_uart_parse_dt.exit:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #10
  call void @of_node_put(ptr noundef nonnull %matched_node.0.i) #7
  br label %do.end

if.end9:                                          ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %call9.i = call ptr @of_find_property(ptr noundef nonnull %matched_node.0.i, ptr noundef nonnull @.str.8, ptr noundef null) #7
  %tobool10.not.i = icmp ne ptr %call9.i, null
  %spec.select.i = zext i1 %tobool10.not.i to i32
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %spec.select.i, ptr %1, align 4
  %call14.i = call ptr @of_find_property(ptr noundef nonnull %matched_node.0.i, ptr noundef nonnull @.str.9, ptr noundef null) #7
  %tobool15.not.i = icmp ne ptr %call14.i, null
  %.sink33.i = zext i1 %tobool15.not.i to i32
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %.sink33.i, ptr %2, align 4
  call void @of_node_put(ptr noundef nonnull %matched_node.0.i) #7
  br label %if.end13

do.end:                                           ; preds = %nfcmrvl_uart_parse_dt.exit, %if.then.i.do.end_crit_edge, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #10
  %14 = load i32, ptr @hci_muxed, align 4
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %0, align 4
  %16 = load i32, ptr @reset_n_io, align 4
  %17 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %config, align 4
  %18 = load i32, ptr @flow_control, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %1, align 4
  %20 = load i32, ptr @break_control, align 4
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %2, align 4
  br label %if.end13

if.end13:                                         ; preds = %do.end, %if.end9
  %call14 = call ptr @nfcmrvl_nci_register_dev(i32 noundef 1, ptr noundef %nu, ptr noundef nonnull @uart_ops, ptr noundef %7, ptr noundef nonnull %config) #7
  %cmp.i37 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i37, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %call14 to i32
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %support_fw_dnld = getelementptr inbounds %struct.nfcmrvl_private, ptr %call14, i32 0, i32 4
  %23 = ptrtoint ptr %support_fw_dnld to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %support_fw_dnld, align 4
  %drv_data = getelementptr inbounds %struct.nci_uart, ptr %nu, i32 0, i32 13
  %24 = ptrtoint ptr %drv_data to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call14, ptr %drv_data, align 4
  %ndev = getelementptr inbounds %struct.nfcmrvl_private, ptr %call14, i32 0, i32 2
  %25 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ndev, align 4
  %ndev19 = getelementptr inbounds %struct.nci_uart, ptr %nu, i32 0, i32 4
  %27 = ptrtoint ptr %ndev19 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %ndev19, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then16
  %retval.0 = phi i32 [ %22, %if.then16 ], [ 0, %if.end18 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfcmrvl_nci_uart_close(ptr nocapture noundef readonly %nu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_data = getelementptr inbounds %struct.nci_uart, ptr %nu, i32 0, i32 13
  %0 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_data, align 4
  tail call void @nfcmrvl_nci_unregister_dev(ptr noundef %1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfcmrvl_nci_uart_recv(ptr nocapture noundef readonly %nu, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_data = getelementptr inbounds %struct.nci_uart, ptr %nu, i32 0, i32 13
  %0 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_data, align 4
  %call = tail call i32 @nfcmrvl_nci_recv_frame(ptr noundef %1, ptr noundef %skb) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfcmrvl_nci_uart_tx_start(ptr nocapture noundef readonly %nu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_data = getelementptr inbounds %struct.nci_uart, ptr %nu, i32 0, i32 13
  %0 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_data, align 4
  %ndev = getelementptr inbounds %struct.nfcmrvl_private, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %fw_download_in_progress = getelementptr inbounds %struct.nfc_dev, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %fw_download_in_progress to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %fw_download_in_progress, align 1, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %break_control = getelementptr inbounds %struct.nfcmrvl_private, ptr %1, i32 0, i32 1, i32 3
  %8 = ptrtoint ptr %break_control to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %break_control, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool1.not = icmp eq i32 %9, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %land.lhs.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %tty = getelementptr inbounds %struct.nci_uart, ptr %nu, i32 0, i32 7
  %10 = ptrtoint ptr %tty to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tty, align 4
  %ops = getelementptr inbounds %struct.tty_struct, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops, align 4
  %break_ctl = getelementptr inbounds %struct.tty_operations, ptr %13, i32 0, i32 20
  %14 = ptrtoint ptr %break_ctl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %break_ctl, align 4
  %tobool2.not = icmp eq ptr %15, null
  br i1 %tobool2.not, label %land.lhs.true.cleanup_crit_edge, label %if.then3

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 %15(ptr noundef %11, i32 noundef 0) #7
  tail call void @usleep_range_state(i32 noundef 3000, i32 noundef 5000, i32 noundef 2) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfcmrvl_nci_uart_tx_done(ptr nocapture noundef readonly %nu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_data = getelementptr inbounds %struct.nci_uart, ptr %nu, i32 0, i32 13
  %0 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_data, align 4
  %ndev = getelementptr inbounds %struct.nfcmrvl_private, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %fw_download_in_progress = getelementptr inbounds %struct.nfc_dev, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %fw_download_in_progress to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %fw_download_in_progress, align 1, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %break_control = getelementptr inbounds %struct.nfcmrvl_private, ptr %1, i32 0, i32 1, i32 3
  %8 = ptrtoint ptr %break_control to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %break_control, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool1.not = icmp eq i32 %9, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %land.lhs.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %tty = getelementptr inbounds %struct.nci_uart, ptr %nu, i32 0, i32 7
  %10 = ptrtoint ptr %tty to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tty, align 4
  %ops = getelementptr inbounds %struct.tty_struct, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops, align 4
  %break_ctl = getelementptr inbounds %struct.tty_operations, ptr %13, i32 0, i32 20
  %14 = ptrtoint ptr %break_ctl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %break_ctl, align 4
  %tobool2.not = icmp eq ptr %15, null
  br i1 %tobool2.not, label %land.lhs.true.cleanup_crit_edge, label %if.then3

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 %15(ptr noundef %11, i32 noundef -1) #7
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 3000, i32 noundef 2) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfcmrvl_nci_register_dev(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_compatible_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfcmrvl_parse_dt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nfcmrvl_uart_nci_open(ptr nocapture noundef readnone %priv) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nfcmrvl_uart_nci_close(ptr nocapture noundef readnone %priv) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfcmrvl_uart_nci_send(ptr nocapture noundef readonly %priv, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_data = getelementptr inbounds %struct.nfcmrvl_private, ptr %priv, i32 0, i32 5
  %0 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_data, align 4
  %send = getelementptr inbounds %struct.nci_uart, ptr %1, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %send to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %send, align 4
  %call = tail call i32 %3(ptr noundef %1, ptr noundef %skb) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfcmrvl_uart_nci_update_config(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %param) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_data = getelementptr inbounds %struct.nfcmrvl_private, ptr %priv, i32 0, i32 5
  %0 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_data, align 4
  %baudrate = getelementptr inbounds %struct.nfcmrvl_fw_uart_config, ptr %param, i32 0, i32 1
  %2 = ptrtoint ptr %baudrate to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %baudrate, align 1
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %5 = ptrtoint ptr %param to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %param, align 1
  %conv = zext i8 %6 to i32
  tail call void @nci_uart_set_config(ptr noundef %1, i32 noundef %4, i32 noundef %conv) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nci_uart_set_config(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfcmrvl_nci_unregister_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfcmrvl_nci_recv_frame(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !13, !15, !17, !18, !20, !22, !23, !25, !27, !28, !30, !32, !34, !36, !38, !40, !42, !43, !44, !45, !46, !48, !50, !52, !53, !54, !55, !57, !59, !61, !62, !63, !64, !65}
!llvm.module.flags = !{!67, !68, !69, !70, !71, !72, !73, !74}
!llvm.ident = !{!75}

!0 = !{ptr @__initcall__kmod_nfcmrvl_uart__275_192_nfcmrvl_nci_uart_init6, !1, !"__initcall__kmod_nfcmrvl_uart__275_192_nfcmrvl_nci_uart_init6", i1 false, i1 false}
!1 = !{!"../drivers/nfc/nfcmrvl/uart.c", i32 192, i32 1}
!2 = !{ptr @__exitcall_nfcmrvl_nci_uart_exit, !1, !"__exitcall_nfcmrvl_nci_uart_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author276, !4, !"__UNIQUE_ID_author276", i1 false, i1 false}
!4 = !{!"../drivers/nfc/nfcmrvl/uart.c", i32 194, i32 1}
!5 = !{ptr @__UNIQUE_ID_description277, !6, !"__UNIQUE_ID_description277", i1 false, i1 false}
!6 = !{!"../drivers/nfc/nfcmrvl/uart.c", i32 195, i32 1}
!7 = !{ptr @__UNIQUE_ID_file278, !8, !"__UNIQUE_ID_file278", i1 false, i1 false}
!8 = !{!"../drivers/nfc/nfcmrvl/uart.c", i32 196, i32 1}
!9 = !{ptr @__UNIQUE_ID_license279, !8, !"__UNIQUE_ID_license279", i1 false, i1 false}
!10 = !{ptr @__param_flow_control, !11, !"__param_flow_control", i1 false, i1 false}
!11 = !{!"../drivers/nfc/nfcmrvl/uart.c", i32 198, i32 1}
!12 = !{ptr @__UNIQUE_ID_flow_controltype280, !11, !"__UNIQUE_ID_flow_controltype280", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_flow_control281, !14, !"__UNIQUE_ID_flow_control281", i1 false, i1 false}
!14 = !{!"../drivers/nfc/nfcmrvl/uart.c", i32 199, i32 1}
!15 = !{ptr @__param_break_control, !16, !"__param_break_control", i1 false, i1 false}
!16 = !{!"../drivers/nfc/nfcmrvl/uart.c", i32 201, i32 1}
!17 = !{ptr @__UNIQUE_ID_break_controltype282, !16, !"__UNIQUE_ID_break_controltype282", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_break_control283, !19, !"__UNIQUE_ID_break_control283", i1 false, i1 false}
!19 = !{!"../drivers/nfc/nfcmrvl/uart.c", i32 202, i32 1}
!20 = !{ptr @__param_hci_muxed, !21, !"__param_hci_muxed", i1 false, i1 false}
!21 = !{!"../drivers/nfc/nfcmrvl/uart.c", i32 204, i32 1}
!22 = !{ptr @__UNIQUE_ID_hci_muxedtype284, !21, !"__UNIQUE_ID_hci_muxedtype284", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_hci_muxed285, !24, !"__UNIQUE_ID_hci_muxed285", i1 false, i1 false}
!24 = !{!"../drivers/nfc/nfcmrvl/uart.c", i32 205, i32 1}
!25 = !{ptr @__param_reset_n_io, !26, !"__param_reset_n_io", i1 false, i1 false}
!26 = !{!"../drivers/nfc/nfcmrvl/uart.c", i32 207, i32 1}
!27 = !{ptr @__UNIQUE_ID_reset_n_iotype286, !26, !"__UNIQUE_ID_reset_n_iotype286", i1 false, i1 false}
!28 = !{ptr @__UNIQUE_ID_reset_n_io287, !29, !"__UNIQUE_ID_reset_n_io287", i1 false, i1 false}
!29 = !{!"../drivers/nfc/nfcmrvl/uart.c", i32 208, i32 1}
!30 = !{ptr @hci_muxed, !31, !"hci_muxed", i1 false, i1 false}
!31 = !{!"../drivers/nfc/nfcmrvl/uart.c", i32 15, i32 21}
!32 = !{ptr @flow_control, !33, !"flow_control", i1 false, i1 false}
!33 = !{!"../drivers/nfc/nfcmrvl/uart.c", i32 16, i32 21}
!34 = !{ptr @break_control, !35, !"break_control", i1 false, i1 false}
!35 = !{!"../drivers/nfc/nfcmrvl/uart.c", i32 17, i32 21}
!36 = !{ptr @.str, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/nfc/nfcmrvl/uart.c", i32 182, i32 12}
!38 = !{ptr @nfcmrvl_nci_uart, !39, !"nfcmrvl_nci_uart", i1 false, i1 false}
!39 = !{!"../drivers/nfc/nfcmrvl/uart.c", i32 180, i32 24}
!40 = !{ptr @.str.1, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/nfc/nfcmrvl/uart.c", i32 116, i32 3}
!42 = !{ptr @.str.2, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.3, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @nfcmrvl_nci_uart_open._entry, !41, !"_entry", i1 false, i1 false}
!45 = !{ptr @nfcmrvl_nci_uart_open._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.4, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/nfc/nfcmrvl/uart.c", i32 65, i32 47}
!48 = !{ptr @.str.5, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/nfc/nfcmrvl/uart.c", i32 67, i32 48}
!50 = !{ptr @.str.6, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/nfc/nfcmrvl/uart.c", i32 74, i32 3}
!52 = !{ptr @.str.7, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @nfcmrvl_uart_parse_dt._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @nfcmrvl_uart_parse_dt._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.8, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/nfc/nfcmrvl/uart.c", i32 79, i32 37}
!57 = !{ptr @.str.9, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/nfc/nfcmrvl/uart.c", i32 84, i32 37}
!59 = !{ptr @uart_ops, !60, !"uart_ops", i1 false, i1 false}
!60 = !{!"../drivers/nfc/nfcmrvl/uart.c", i32 52, i32 36}
!61 = !{ptr @__param_str_flow_control, !11, !"__param_str_flow_control", i1 false, i1 false}
!62 = !{ptr @__param_str_break_control, !16, !"__param_str_break_control", i1 false, i1 false}
!63 = !{ptr @__param_str_hci_muxed, !21, !"__param_str_hci_muxed", i1 false, i1 false}
!64 = !{ptr @__param_str_reset_n_io, !26, !"__param_str_reset_n_io", i1 false, i1 false}
!65 = !{ptr @reset_n_io, !66, !"reset_n_io", i1 false, i1 false}
!66 = !{!"../drivers/nfc/nfcmrvl/uart.c", i32 18, i32 12}
!67 = !{i32 1, !"wchar_size", i32 2}
!68 = !{i32 1, !"min_enum_size", i32 4}
!69 = !{i32 8, !"branch-target-enforcement", i32 0}
!70 = !{i32 8, !"sign-return-address", i32 0}
!71 = !{i32 8, !"sign-return-address-all", i32 0}
!72 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!73 = !{i32 7, !"uwtable", i32 1}
!74 = !{i32 7, !"frame-pointer", i32 2}
!75 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!76 = !{i8 0, i8 2}
